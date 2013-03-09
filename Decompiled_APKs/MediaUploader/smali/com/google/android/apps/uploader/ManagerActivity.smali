.class public Lcom/google/android/apps/uploader/ManagerActivity;
.super Landroid/app/ListActivity;
.source "ManagerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/apps/uploader/UploadService$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_CANCEL:I = 0x1

.field private static final CONTEXT_MENU_RETRY:I = 0x2

.field private static final KEY_EXPLAINED_CLEANUP:Ljava/lang/String; = "explainedCleanup"

.field private static final MENU_CLEANUP:I = 0x1

.field private static final MENU_PAUSE:I = 0x2

.field private static final MENU_RESUME:I = 0x3


# instance fields
.field private application:Lcom/google/android/apps/uploader/UploaderApplication;

.field private explainedCleanup:Z

.field private intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

.field private lastIntent:Landroid/content/Intent;

.field private listAdapter:Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

.field private percentTextView:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressPercent:I

.field private progressUpdater:Ljava/lang/Runnable;

.field private queue:Lcom/google/android/apps/uploader/UploadsQueue;

.field private service:Lcom/google/android/apps/uploader/UploadService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 221
    new-instance v0, Lcom/google/android/apps/uploader/ManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/ManagerActivity$2;-><init>(Lcom/google/android/apps/uploader/ManagerActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->progressUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploaderApplication;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploadService;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/uploader/ManagerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/uploader/ManagerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->percentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->percentTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/uploader/ManagerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->progressPercent:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploadsQueue;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    return-object v0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 409
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManagerActivity.handleIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz p1, :cond_5

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->isSingleUploadIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->parseSingleUploadIntent(Landroid/content/Intent;)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_6

    .line 422
    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->needsWifi(Lcom/google/android/apps/uploader/UploadInfo;)Z

    .line 423
    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/UploadIntentParser;->createServiceIntent(Lcom/google/android/apps/uploader/UploadInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 425
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getAuthTokenType()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_0
    move-object v4, v0

    move-object v7, v2

    move-object v2, v1

    .line 449
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 450
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Landroid/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v1, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 454
    :cond_0
    if-eqz v7, :cond_1

    .line 455
    invoke-virtual {p0, v7}, Lcom/google/android/apps/uploader/ManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 457
    :cond_1
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->isMultipleUploadIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->parseMultipleUploadIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_5

    .line 433
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploadInfo;

    .line 434
    iget-object v4, p0, Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->needsWifi(Lcom/google/android/apps/uploader/UploadInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploadIntentParser;->createServiceIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 441
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getAuthTokenType()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getAccount()Ljava/lang/String;

    move-result-object v0

    move-object v7, v2

    move-object v2, v4

    move-object v4, v0

    goto :goto_1

    :cond_5
    move-object v4, v3

    move-object v2, v3

    move-object v7, v3

    goto :goto_1

    :cond_6
    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 258
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 262
    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->listAdapter:Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->getUploadInfo(J)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v0, v4

    .line 289
    :goto_0
    return v0

    .line 267
    :pswitch_0
    const v1, 0x7f060033

    .line 268
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->isPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/uploader/UploadService;->cancelUpload(Lcom/google/android/apps/uploader/UploadInfo;)V

    move v0, v1

    .line 275
    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v5

    .line 276
    goto :goto_0

    .line 273
    :cond_0
    const v0, 0x7f060034

    goto :goto_1

    .line 280
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->shouldRetry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/UploadIntentParser;->createServiceIntent(Lcom/google/android/apps/uploader/UploadInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    move v0, v5

    .line 286
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    .line 123
    new-instance v0, Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/UploadIntentParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getQueue()Lcom/google/android/apps/uploader/UploadsQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/UploadsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 130
    new-instance v1, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;-><init>(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->listAdapter:Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->listAdapter:Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/google/android/apps/uploader/ManagerActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/ManagerActivity$1;-><init>(Lcom/google/android/apps/uploader/ManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    const/high16 v1, 0x7f08

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/ManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 144
    const-string v0, "MediaUploader"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/apps/uploader/ManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    const-string v1, "explainedCleanup"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->explainedCleanup:Z

    .line 146
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 242
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->listAdapter:Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

    iget-wide v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->getUploadInfo(J)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 246
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->shouldRetry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const/4 v1, 0x2

    const v2, 0x7f060032

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x1

    const v1, 0x7f060031

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 254
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 296
    const v0, 0x7f06002e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 298
    const/4 v0, 0x2

    const v1, 0x7f06002f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 300
    const/4 v0, 0x3

    const v1, 0x7f060030

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 303
    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 472
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 473
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 377
    const-string v0, "MediaUploader"

    const-string v1, "ManagerActivity.onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/ManagerActivity;->setIntent(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 327
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    .line 371
    :goto_0
    return v0

    .line 332
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->explainedCleanup:Z

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/apps/uploader/ManagerActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/uploader/ManagerActivity$3;-><init>(Lcom/google/android/apps/uploader/ManagerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 345
    const-string v0, "MediaUploader"

    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/uploader/ManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 347
    const-string v1, "explainedCleanup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    iput-boolean v3, p0, Lcom/google/android/apps/uploader/ManagerActivity;->explainedCleanup:Z

    :goto_1
    move v0, v3

    .line 353
    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsQueue;->deleteAllResolved()V

    goto :goto_1

    .line 357
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsQueue;->getPendingCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService;->pause()V

    .line 359
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->notifyDataSetChanged()V

    :cond_1
    move v0, v3

    .line 361
    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService;->resume()V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->notifyDataSetChanged()V

    :cond_2
    move v0, v3

    .line 368
    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 308
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 310
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadsQueue;->getResolvedCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 312
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 313
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsQueue;->getPendingCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 310
    goto :goto_0

    .line 318
    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 396
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 397
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManagerActivity.onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->lastIntent:Landroid/content/Intent;

    if-eq v0, v1, :cond_0

    .line 401
    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->lastIntent:Landroid/content/Intent;

    .line 402
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->handleIntent(Landroid/content/Intent;)V

    .line 405
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->setIntent(Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 476
    const-string v0, "MediaUploader"

    const-string v1, "Connected to upload service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    check-cast p2, Lcom/google/android/apps/uploader/UploadService$UploadServiceBinder;

    invoke-virtual {p2}, Lcom/google/android/apps/uploader/UploadService$UploadServiceBinder;->getService()Lcom/google/android/apps/uploader/UploadService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    .line 478
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/UploadService;->setProgressListener(Lcom/google/android/apps/uploader/UploadService$ProgressListener;)V

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/ManagerActivity$ManagerListAdapter;->notifyDataSetChanged()V

    .line 484
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 487
    const-string v0, "MediaUploader"

    const-string v1, "Disconnected from upload service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/UploadService;->setProgressListener(Lcom/google/android/apps/uploader/UploadService$ProgressListener;)V

    .line 489
    iput-object v2, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    .line 490
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 383
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 384
    const-string v0, "MediaUploader"

    const-string v1, "ManagerActivity.onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    invoke-virtual {p0, v0, p0, v2}, Lcom/google/android/apps/uploader/ManagerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getNotificationManager()Lcom/google/android/apps/uploader/UploadsNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->setOnTop(Z)V

    .line 390
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getNotificationManager()Lcom/google/android/apps/uploader/UploadsNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->setOnTop(Z)V

    .line 463
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0, p0}, Lcom/google/android/apps/uploader/ManagerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->service:Lcom/google/android/apps/uploader/UploadService;

    .line 467
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 468
    return-void
.end method

.method public progressUpdated(I)V
    .locals 1
    .parameter

    .prologue
    .line 233
    iput p1, p0, Lcom/google/android/apps/uploader/ManagerActivity;->progressPercent:I

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/uploader/ManagerActivity;->progressUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/ManagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method
