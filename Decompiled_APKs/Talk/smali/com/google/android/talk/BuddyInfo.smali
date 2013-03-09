.class public Lcom/google/android/talk/BuddyInfo;
.super Landroid/app/Activity;
.source "BuddyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/BuddyInfo$QueryHandler;,
        Lcom/google/android/talk/BuddyInfo$RosterListener;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected mApp:Lcom/google/android/talk/TalkApp;

.field private mAvatarView:Landroid/widget/ImageView;

.field protected final mHandler:Landroid/os/Handler;

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mNickname:Ljava/lang/String;

.field private mNicknameField:Landroid/widget/EditText;

.field private mPresence:I

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQueryCompleted:Z

.field mQueryHandler:Lcom/google/android/talk/BuddyInfo$QueryHandler;

.field private mQuerySelectionArg:[Ljava/lang/String;

.field private mRosterListener:Lcom/google/android/talk/BuddyInfo$RosterListener;

.field protected mService:Lcom/google/android/gtalkservice/IGTalkService;

.field private mStatusView:Landroid/widget/TextView;

.field private mType:I

.field private mUserId:J

.field private mUsername:Ljava/lang/String;

.field private mUsernameField:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cap"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "avatars_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/BuddyInfo;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mHandler:Landroid/os/Handler;

    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mQuerySelectionArg:[Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/google/android/talk/BuddyInfo$RosterListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/BuddyInfo$RosterListener;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mRosterListener:Lcom/google/android/talk/BuddyInfo$RosterListener;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->startQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/BuddyInfo;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/talk/BuddyInfo;->update(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/talk/BuddyInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/android/talk/BuddyInfo;->mQueryCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->remove()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/BuddyInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->block()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/BuddyInfo;Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/BuddyInfo;->serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V

    return-void
.end method

.method private block()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "was_removed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->blockContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/BuddyInfo;->setResult(ILandroid/content/Intent;)V

    .line 208
    return-void

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 280
    const v3, 0x7f10000a

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mAvatarView:Landroid/widget/ImageView;

    .line 281
    const v3, 0x7f10001d

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mPresenceView:Landroid/widget/ImageView;

    .line 282
    const v3, 0x7f10001c

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mUsernameField:Landroid/widget/TextView;

    .line 283
    const v3, 0x7f10001b

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    .line 284
    const v3, 0x7f10000f

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mStatusView:Landroid/widget/TextView;

    .line 286
    const v3, 0x7f10001e

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, blockButton:Landroid/view/View;
    const v3, 0x7f10001f

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 288
    .local v2, removeButton:Landroid/view/View;
    new-instance v1, Lcom/google/android/talk/BuddyInfo$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/talk/BuddyInfo$1;-><init>(Lcom/google/android/talk/BuddyInfo;Landroid/view/View;Landroid/view/View;)V

    .line 300
    .local v1, l:Landroid/view/View$OnClickListener;
    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_0
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_1
    return-void
.end method

.method private registerForSessionAvailable()V
    .locals 5

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/talk/TalkApp;->getAccountIdFromActivityIntent(Landroid/content/Intent;)J

    move-result-wide v2

    new-instance v4, Lcom/google/android/talk/BuddyInfo$2;

    invoke-direct {v4, p0}, Lcom/google/android/talk/BuddyInfo$2;-><init>(Lcom/google/android/talk/BuddyInfo;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/TalkApp;->addImSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V

    .line 317
    return-void
.end method

.method private remove()V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "was_removed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeContact(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/BuddyInfo;->setResult(ILandroid/content/Intent;)V

    .line 222
    return-void

    .line 217
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private saveNickname()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 440
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, newNickname:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    const v3, 0x7f0c0025

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 451
    :cond_1
    const/4 v2, 0x0

    .line 453
    .local v2, saved:Z
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v3, :cond_2

    .line 454
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v4, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5}, Lcom/google/android/gtalkservice/IImSession;->editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    const/4 v2, 0x1

    .line 463
    :goto_1
    if-nez v2, :cond_3

    .line 464
    const v3, 0x7f0c0024

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 457
    :cond_2
    :try_start_1
    const-string v3, "talk"

    const-string v4, "[BuddyInfo] saveNickname: empty IM session"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "talk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BuddyInfo] saveNickname caught"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 466
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    iput-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    goto :goto_0
.end method

.method private serviceStateChanged(Lcom/google/android/gtalkservice/IGTalkService;Lcom/google/android/gtalkservice/IImSession;)V
    .locals 4
    .parameter "service"
    .parameter "session"

    .prologue
    .line 324
    if-eqz p1, :cond_1

    .line 325
    iput-object p1, p0, Lcom/google/android/talk/BuddyInfo;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 326
    iput-object p2, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 327
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-nez v1, :cond_0

    .line 328
    const-string v1, "talk"

    const-string v2, "Empty IM session. Finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    .line 342
    :goto_0
    return-void

    .line 334
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mRosterListener:Lcom/google/android/talk/BuddyInfo$RosterListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyInfo] serviceStateChanged caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 346
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mQueryHandler:Lcom/google/android/talk/BuddyInfo$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/BuddyInfo$QueryHandler;->cancelOperation(I)V

    .line 348
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mQueryHandler:Lcom/google/android/talk/BuddyInfo$QueryHandler;

    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/talk/BuddyInfo;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v5, "contacts._id=?"

    iget-object v6, p0, Lcom/google/android/talk/BuddyInfo;->mQuerySelectionArg:[Ljava/lang/String;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/talk/BuddyInfo$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private unregisterForSessionAvailable()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/TalkApp;->removeImSessionAvailableCallback(Landroid/os/Handler;)V

    .line 321
    return-void
.end method

.method private update(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cursor"

    .prologue
    .line 358
    :try_start_0
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    .line 360
    .local v1, app:Lcom/google/android/talk/TalkApp;
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    .line 361
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/talk/BuddyInfo;->mPresence:I

    .line 363
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mUsernameField:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 364
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mUsernameField:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 367
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 370
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    .line 371
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_1
    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/talk/BuddyInfo;->mType:I

    .line 375
    const/4 v7, 0x2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, customStatus:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 377
    iget v7, p0, Lcom/google/android/talk/BuddyInfo;->mPresence:I

    iget-object v8, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v8, v8, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 378
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mStatusView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v8, v8, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    iget v9, p0, Lcom/google/android/talk/BuddyInfo;->mPresence:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_0
    const/4 v7, 0x5

    invoke-static {p1, v7}, Lcom/google/android/talk/DatabaseUtils;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 390
    .local v3, b:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_5

    .line 391
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 396
    .local v2, avatar:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mAvatarView:Landroid/widget/ImageView;

    instance-of v7, v7, Landroid/widget/QuickContactBadge;

    if-eqz v7, :cond_2

    .line 400
    iget-object v6, p0, Lcom/google/android/talk/BuddyInfo;->mAvatarView:Landroid/widget/ImageView;

    check-cast v6, Landroid/widget/QuickContactBadge;

    .line 401
    .local v6, q:Landroid/widget/QuickContactBadge;
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mUsername:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 404
    .end local v6           #q:Landroid/widget/QuickContactBadge;
    :cond_2
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mPresenceView:Landroid/widget/ImageView;

    iget v8, p0, Lcom/google/android/talk/BuddyInfo;->mPresence:I

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #app:Lcom/google/android/talk/TalkApp;
    .end local v2           #avatar:Landroid/graphics/drawable/Drawable;
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v4           #customStatus:Ljava/lang/String;
    :goto_2
    return-void

    .line 380
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v1       #app:Lcom/google/android/talk/TalkApp;
    .restart local v4       #customStatus:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mStatusView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 407
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #app:Lcom/google/android/talk/TalkApp;
    .end local v4           #customStatus:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 408
    .local v5, ex:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v7, "talk"

    const-string v8, "[BuddyInfo] update: got exception calling update()"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_2

    .line 383
    .end local v5           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v1       #app:Lcom/google/android/talk/TalkApp;
    .restart local v4       #customStatus:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/google/android/talk/BuddyInfo;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 413
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #app:Lcom/google/android/talk/TalkApp;
    .end local v4           #customStatus:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 414
    .local v5, ex:Landroid/database/StaleDataException;
    const-string v7, "talk"

    const-string v8, "[BuddyInfo] update: got exception calling update()"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_2

    .line 393
    .end local v5           #ex:Landroid/database/StaleDataException;
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v1       #app:Lcom/google/android/talk/TalkApp;
    .restart local v3       #b:Landroid/graphics/Bitmap;
    .restart local v4       #customStatus:Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .restart local v2       #avatar:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x4

    .line 152
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 154
    .local v2, tablet:Z
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    if-eqz v2, :cond_1

    .line 157
    const v3, 0x7f04000c

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->setContentView(I)V

    .line 162
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->initView()V

    .line 164
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    .line 165
    new-instance v3, Lcom/google/android/talk/BuddyInfo$QueryHandler;

    invoke-direct {v3, p0, p0}, Lcom/google/android/talk/BuddyInfo$QueryHandler;-><init>(Lcom/google/android/talk/BuddyInfo;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mQueryHandler:Lcom/google/android/talk/BuddyInfo$QueryHandler;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 168
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "userId"

    invoke-virtual {v1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/talk/BuddyInfo;->mUserId:J

    .line 169
    iget-object v3, p0, Lcom/google/android/talk/BuddyInfo;->mQuerySelectionArg:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/talk/BuddyInfo;->mUserId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 171
    iget-wide v3, p0, Lcom/google/android/talk/BuddyInfo;->mUserId:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_2

    .line 172
    const-string v3, "talk"

    const-string v4, "[BuddyInfo.onCreate: invalid user id = 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    .line 183
    :cond_0
    :goto_1
    return-void

    .line 159
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const v3, 0x7f04000d

    invoke-virtual {p0, v3}, Lcom/google/android/talk/BuddyInfo;->setContentView(I)V

    goto :goto_0

    .line 177
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->registerForSessionAvailable()V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 180
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 189
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 241
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 228
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->block()V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_0

    .line 233
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->remove()V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->finish()V

    goto :goto_0

    .line 238
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/talk/BuddyInfo;->onBackPressed()V

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f1000ba -> :sswitch_0
        0x7f1000bb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mService:Lcom/google/android/gtalkservice/IGTalkService;

    .line 249
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0}, Lcom/google/android/talk/TalkApp;->ensureServiceBound()V

    .line 250
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->registerForSessionAvailable()V

    .line 251
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 434
    const-string v0, "o-nickname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    const-string v1, "nickname"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 256
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->startQuery()V

    .line 257
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 426
    const-string v0, "nickname"

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mNicknameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v0, "o-nickname"

    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mNickname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 263
    iget-boolean v1, p0, Lcom/google/android/talk/BuddyInfo;->mQueryCompleted:Z

    if-eqz v1, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->saveNickname()V

    .line 268
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/google/android/talk/BuddyInfo;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/BuddyInfo;->mRosterListener:Lcom/google/android/talk/BuddyInfo$RosterListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/BuddyInfo;->unregisterForSessionAvailable()V

    .line 277
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "talk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BuddyInfo] onStop: caught exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
