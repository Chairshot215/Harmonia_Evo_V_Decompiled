.class public abstract Lcom/android/mms/ui/MmsBaseListActivity;
.super Lcom/htc/app/HtcListActivity;
.source "MmsBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;,
        Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;,
        Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;,
        Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;
    }
.end annotation


# static fields
.field protected static final DIALOG_CONFIRM_DELETE:I = 0x1

.field protected static final DIALOG_MORE_INFO:I = 0x0

.field private static final HTC_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MmsBaseListActivity"

.field private static final UI_CAHNGE_CURSOR:I


# instance fields
.field protected mApMainAsyncHandler:Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;

.field protected mAsyncQueryHandler:Landroid/os/Handler;

.field protected mBaseAsyncQueryHandler:Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;

.field protected mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field protected mIsForeground:Z

.field protected mIsQuerying:Z

.field protected mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

.field protected mRequery:Z

.field protected mUIHandler:Landroid/os/Handler;

.field protected mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 53
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mRequery:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsForeground:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsQuerying:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mValid:Z

    .line 253
    new-instance v0, Lcom/android/mms/ui/MmsBaseListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsBaseListActivity$1;-><init>(Lcom/android/mms/ui/MmsBaseListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mUIHandler:Landroid/os/Handler;

    .line 333
    return-void
.end method

.method private createConfirmDeleteDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 431
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 432
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 433
    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 434
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 435
    const v1, 0x20c0164

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 436
    const v1, 0x20c015f

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 437
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private setQueryHandler()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;-><init>(Lcom/android/mms/ui/MmsBaseListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mApMainAsyncHandler:Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;

    .line 122
    new-instance v0, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;-><init>(Lcom/android/mms/ui/MmsBaseListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mBaseAsyncQueryHandler:Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;

    .line 123
    return-void
.end method


# virtual methods
.method protected abstract bindListItemView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method protected getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected handleUIMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 283
    return-void
.end method

.method protected isCmasDeletable(IJZ)Z
    .locals 4
    .parameter "cType"
    .parameter "exp"
    .parameter "lock"

    .prologue
    const/4 v2, 0x1

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 443
    .local v0, currentTime:J
    if-nez p4, :cond_1

    if-ne p1, v2, :cond_0

    if-ne p1, v2, :cond_1

    cmp-long v3, p2, v0

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected abstract newListItemView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected notifyContentChange()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->notifyContentChange()V

    .line 292
    return-void
.end method

.method protected onApBGQueryComplete(Landroid/os/Message;Landroid/database/Cursor;)V
    .locals 0
    .parameter "msg"
    .parameter "cursor"

    .prologue
    .line 288
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 165
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsBaseListActivity;->requestWindowFeature(I)Z

    .line 172
    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 174
    .local v1, Headercomposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    new-array v0, v4, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v4, Lcom/android/mms/util/CommonActivityLayout$BarText;

    const v5, 0x7f09030c

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    aput-object v4, v0, v7

    .line 177
    .local v0, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    iput-object v0, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 178
    sget-object v4, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v4, v1, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 180
    new-instance v2, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v2, p0, v1, v8}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 181
    .local v2, activityComposer:Lcom/android/mms/util/CommonActivityLayout;
    invoke-virtual {v2}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v3

    .line 182
    .local v3, mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v3}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsBaseListActivity;->setContentView(Landroid/view/View;)V

    .line 184
    aget-object v4, v0, v7

    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HeaderBarText;

    iput-object v4, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 187
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 188
    invoke-direct {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->setQueryHandler()V

    .line 189
    new-instance v4, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    invoke-direct {v4, p0, p0, v8}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;-><init>(Lcom/android/mms/ui/MmsBaseListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v4, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    .line 190
    iget-object v4, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsBaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsBaseListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 193
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 198
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 397
    packed-switch p1, :pswitch_data_0

    .line 401
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 399
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->createConfirmDeleteDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 231
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 232
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsBaseListActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mCursorAdapter:Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MmsBaseListActivity$BaseCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsBaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsForeground:Z

    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mApMainAsyncHandler:Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget v1, v1, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->cancelOperation(I)V

    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mBaseAsyncQueryHandler:Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget v1, v1, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;->cancelOperation(I)V

    .line 226
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 406
    move-object v2, p2

    check-cast v2, Lcom/htc/widget/HtcAlertDialog;

    .line 407
    .local v2, htcDialog:Lcom/htc/widget/HtcAlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 426
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/HtcListActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 427
    return-void

    .line 409
    :pswitch_0
    sget-object v3, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "msgId"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 410
    .local v0, deleteUri:Landroid/net/Uri;
    const-string v3, "finish"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 411
    .local v1, finishActivity:Z
    const/4 v3, -0x1

    const v4, 0x20c015f

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsBaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/MmsBaseListActivity$2;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/mms/ui/MmsBaseListActivity$2;-><init>(Lcom/android/mms/ui/MmsBaseListActivity;Landroid/net/Uri;Z)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsForeground:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->startQueryWithCheck()V

    .line 206
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 240
    return-void
.end method

.method public setAutoRequery(Z)V
    .locals 0
    .parameter "requery"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mRequery:Z

    .line 103
    return-void
.end method

.method protected setMainQueryArgs(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "mainQuery"

    .prologue
    .line 109
    new-instance v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;-><init>(Lcom/android/mms/ui/MmsBaseListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput p1, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput-object p2, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->cookie:Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput-object p3, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->uri:Landroid/net/Uri;

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput-object p4, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->projection:[Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput-object p5, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->selection:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput-object p6, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput-object p7, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->orderBy:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput-boolean p8, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->mainQuery:Z

    .line 118
    return-void
.end method

.method public setTitleText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 95
    if-gtz p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected startQuery()V
    .locals 9

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->mainQuery:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mApMainAsyncHandler:Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget v1, v1, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->cancelOperation(I)V

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mApMainAsyncHandler:Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget v1, v1, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 140
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mApMainAsyncHandler:Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MmsBaseListActivity$MmsApMainAsyncHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 153
    .end local v8           #msg:Landroid/os/Message;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsQuerying:Z

    .line 154
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mBaseAsyncQueryHandler:Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget v1, v1, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;->cancelOperation(I)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mBaseAsyncQueryHandler:Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget v1, v1, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    iget-object v2, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget-object v2, v2, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget-object v3, v3, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget-object v4, v4, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget-object v5, v5, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget-object v6, v6, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    iget-object v7, v7, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MmsBaseListActivity$BaseAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startQueryWithCheck()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mMainQueryArgs:Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;

    if-nez v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->finish()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v0, "MmsBaseListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQueryWithCheck: valid> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", querying> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsQuerying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mValid:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity;->mIsQuerying:Z

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsBaseListActivity;->startQuery()V

    goto :goto_0
.end method
