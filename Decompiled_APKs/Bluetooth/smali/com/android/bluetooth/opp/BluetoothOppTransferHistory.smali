.class public Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.super Landroid/app/Activity;
.source "BluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferHistory"

.field private static final V:Z


# instance fields
.field private mContextMenuPosition:I

.field private mIdColumnId:I

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mShowAllIncoming:Z

.field private mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

.field private mTransferCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method private clearAllDownloads()V
    .locals 4

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 256
    .local v1, sessionId:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 257
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 259
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 261
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #sessionId:I
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 263
    :cond_1
    return-void
.end method

.method private getClearableCount()I
    .locals 5

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, count:I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, statusColumnId:I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 240
    .local v1, status:I
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 243
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 246
    .end local v1           #status:I
    .end local v2           #statusColumnId:I
    :cond_1
    return v0
.end method

.method private openCompleteTransfer()V
    .locals 7

    .prologue
    .line 283
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 284
    .local v2, sessionId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v3

    .line 286
    .local v3, transInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    if-nez v3, :cond_0

    .line 287
    const-string v4, "BluetoothOppTransferHistory"

    const-string v5, "Error: Can not get data from db"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 290
    :cond_0
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 294
    iget-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {p0, v4, v5, v6, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    goto :goto_0

    .line 297
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v1, in:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private promptClearList()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040054

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 229
    return-void
.end method

.method private updateNotificationWhenBtDisabled()V
    .locals 2

    .prologue
    .line 309
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 310
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 313
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->finishNotification()V

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 178
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 192
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 181
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 182
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 187
    .local v1, sessionId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 188
    .local v0, contentUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 189
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x7f070020
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0, v9}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->requestWindowFeature(I)Z

    .line 90
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->setContentView(I)V

    .line 91
    const v5, 0x7f070009

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Lcom/htc/widget/HtcListView;

    .line 92
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Lcom/htc/widget/HtcListView;

    const v6, 0x7f07000a

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    .line 97
    const v5, 0x7f070008

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    .line 98
    .local v2, header:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "direction"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, dir:I
    if-nez v0, :cond_2

    .line 103
    const v5, 0x7f040052

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 104
    const-string v1, "(direction == 0)"

    .line 116
    .local v1, direction:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status >= \'200\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, selection:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v5, :cond_0

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "visibility"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NULL OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "visibility"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " == \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    :cond_0
    const-string v4, "timestamp DESC"

    .line 127
    .local v4, sortOrder:Ljava/lang/String;
    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v6, v8

    const-string v7, "hint"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string v8, "status"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "total_bytes"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "timestamp"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "visibility"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "destination"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "direction"

    aput-object v8, v6, v7

    const-string v7, "timestamp DESC"

    invoke-virtual {p0, v5, v6, v3, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    .line 135
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 136
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mIdColumnId:I

    .line 138
    new-instance v5, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    const v6, 0x7f030001

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    .line 140
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 142
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 145
    :cond_1
    new-instance v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v5, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 146
    return-void

    .line 107
    .end local v1           #direction:Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #sortOrder:Ljava/lang/String;
    :cond_2
    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v5, :cond_3

    .line 108
    const v5, 0x7f04004e

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 112
    :goto_1
    const-string v1, "(direction == 1)"

    .restart local v1       #direction:Ljava/lang/String;
    goto/16 :goto_0

    .line 110
    .end local v1           #direction:Ljava/lang/String;
    :cond_3
    const v5, 0x7f040051

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 197
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    move-object v2, p3

    .line 198
    check-cast v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 199
    .local v2, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget v4, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 200
    iget v3, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mContextMenuPosition:I

    .line 202
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    const-string v5, "hint"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, fileName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 205
    const v3, 0x7f040034

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 209
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 210
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v3, :cond_2

    .line 211
    const/high16 v3, 0x7f06

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 216
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #inflater:Landroid/view/MenuInflater;
    .end local v2           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_1
    :goto_0
    return-void

    .line 213
    .restart local v0       #fileName:Ljava/lang/String;
    .restart local v1       #inflater:Landroid/view/MenuInflater;
    .restart local v2       #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_2
    const v3, 0x7f060002

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 152
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f060001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mTransferCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 274
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->openCompleteTransfer()V

    .line 275
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 276
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->promptClearList()V

    .line 171
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f070021
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 159
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->getClearableCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 161
    .local v0, showClear:Z
    :goto_0
    const v1, 0x7f070021

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 163
    .end local v0           #showClear:Z
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
