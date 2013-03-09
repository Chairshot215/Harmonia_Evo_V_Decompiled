.class public Lcom/android/mms/ui/RestoreActivity;
.super Lcom/htc/app/HtcListActivity;
.source "RestoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RestoreActivity$MyListAdapter;,
        Lcom/android/mms/ui/RestoreActivity$ViewHolder;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RestoreActivity"

.field private static final MENU_DELETE_ALL_BACKUP_FILES:I = 0x3e9

.field private static final MENU_DELETE_BACKUP_FILES:I = 0x3e8

.field static final MSG_RESTORE_CANCELCONFIRM:I = 0x68

.field static final MSG_RESTORE_FAILED:I = 0x67

.field static final MSG_RESTORE_STARTED:I = 0x65

.field static final MSG_RESTORE_SUCCESS:I = 0x66

.field private static RefreshRunnable:Ljava/lang/Runnable; = null

.field private static mIsCanceled:Z = false

.field private static mPause:Z = false

.field private static mResotreThread:Ljava/lang/Thread; = null

.field private static mRestoreSuccess:Z = false

.field static final mSupportEncrypt:Z = true


# instance fields
.field mBackupFileName:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mItemCheckListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

.field private mNegativeButton:Landroid/widget/Button;

.field private mNegativeClickListener:Landroid/view/View$OnClickListener;

.field private mPositiveButton:Landroid/widget/Button;

.field private mPositiveClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRestoreClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSchema:[Ljava/lang/String;

.field protected mSelectedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/RestoreActivity;->mResotreThread:Ljava/lang/Thread;

    .line 113
    sput-boolean v1, Lcom/android/mms/ui/RestoreActivity;->mPause:Z

    .line 120
    sput-boolean v1, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    .line 123
    sput-boolean v1, Lcom/android/mms/ui/RestoreActivity;->mRestoreSuccess:Z

    .line 1022
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$10;

    invoke-direct {v0}, Lcom/android/mms/ui/RestoreActivity$10;-><init>()V

    sput-object v0, Lcom/android/mms/ui/RestoreActivity;->RefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mSelectedItems:Ljava/util/Set;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mSchema:[Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/RestoreActivity;->mIsForeground:Z

    .line 128
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RestoreActivity$1;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RestoreActivity$2;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 170
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RestoreActivity$3;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mItemCheckListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 186
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RestoreActivity$4;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mPositiveClickListener:Landroid/view/View$OnClickListener;

    .line 192
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RestoreActivity$5;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mNegativeClickListener:Landroid/view/View$OnClickListener;

    .line 240
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RestoreActivity$6;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mRestoreClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 854
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-boolean p0, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-boolean p0, Lcom/android/mms/ui/RestoreActivity;->mRestoreSuccess:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/RestoreActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/mms/ui/RestoreActivity;->mResotreThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-object p0, Lcom/android/mms/ui/RestoreActivity;->mResotreThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/RestoreActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->isDelOldMsgSettingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/RestoreActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->autoDeleteOldMsg()V

    return-void
.end method

.method private autoDeleteOldMsg()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 1175
    const/4 v6, 0x0

    .line 1176
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 1177
    .local v8, threadOrContactId:J
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v7

    .line 1180
    .local v7, msgLimit:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1182
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/QueryURI;->CONVERSATION_V2_COMMON_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message_count > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1185
    if-eqz v6, :cond_3

    .line 1186
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1187
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v0, v8, v11

    if-lez v0, :cond_0

    .line 1188
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByContactId(Landroid/content/Context;J)V

    goto :goto_0

    .line 1194
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/QueryURI;->GET_THREAD_ID_V2_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message_count > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1197
    if-eqz v6, :cond_3

    .line 1198
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1199
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v0, v8, v11

    if-lez v0, :cond_2

    .line 1200
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    goto :goto_1

    .line 1205
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1207
    const/4 v6, 0x0

    .line 1209
    :cond_4
    return-void
.end method

.method private backupFilesExist()Z
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->getBackupFileList()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cancelbyExternal()V
    .locals 2

    .prologue
    .line 1218
    const-string v0, "RestoreActivity"

    const-string v1, "Restore cancel by external"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    .line 1220
    return-void
.end method

.method private checkSchema(Ljava/lang/String;)Z
    .locals 9
    .parameter "columnName"

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mSchema:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 561
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 562
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mSchema:[Ljava/lang/String;

    .line 563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 567
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mSchema:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 568
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mSchema:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mSchema:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    const/4 v0, 0x1

    .line 574
    .end local v8           #i:I
    :goto_1
    return v0

    .line 568
    .restart local v8       #i:I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 574
    .end local v8           #i:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private clearMessagesDatabase()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 553
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2, v2}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 554
    return-void
.end method

.method private clearMessagesDatabaseKeepUnread()V
    .locals 4

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "read!=0"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 697
    return-void
.end method

.method private getBackupFileList()[Ljava/io/File;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 810
    const/4 v2, 0x0

    .line 812
    .local v2, file:Ljava/io/File;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xd8

    if-ne v4, v5, :cond_1

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ct_backup/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sms.vmg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, backupFileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 819
    new-array v3, v6, [Ljava/io/File;

    .line 837
    .end local v1           #backupFileName:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 821
    .restart local v1       #backupFileName:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/io/File;

    .line 822
    .local v3, files:[Ljava/io/File;
    aput-object v2, v3, v6

    goto :goto_0

    .line 828
    .end local v1           #backupFileName:Ljava/lang/String;
    .end local v3           #files:[Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getSdCardStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sms_backup/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, backupDirName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 832
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 833
    :cond_2
    new-array v3, v6, [Ljava/io/File;

    goto :goto_0

    .line 837
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    goto :goto_0
.end method

.method private getBackupReader(Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v2, 0x1

    .line 446
    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;Z)Ljava/io/Reader;

    move-result-object v0

    .line 447
    .local v0, reader:Ljava/io/Reader;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 455
    :goto_0
    return-object v2

    .line 450
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/RestoreActivity;->tryToReadLine(Ljava/io/Reader;)Z

    move-result v1

    .line 451
    .local v1, valid:Z
    if-eqz v1, :cond_1

    .line 452
    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;Z)Ljava/io/Reader;

    move-result-object v2

    goto :goto_0

    .line 455
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;Z)Ljava/io/Reader;

    move-result-object v2

    goto :goto_0
.end method

.method private getBackupReader(Ljava/lang/String;Z)Ljava/io/Reader;
    .locals 11
    .parameter "fileName"
    .parameter "newVersion"

    .prologue
    .line 476
    const-string v8, "RestoreActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBackupReader: version> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, backupFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 481
    .local v4, inputStream:Ljava/io/InputStream;
    const-string v7, "htc20100416"

    .line 484
    .local v7, passwd:Ljava/lang/String;
    :try_start_0
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 488
    .local v3, generator:Ljavax/crypto/KeyGenerator;
    if-eqz p2, :cond_0

    .line 490
    new-instance v8, Ljava/security/SecureRandom;

    const-string v9, "htc20100416"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v3, v8}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 496
    :goto_0
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 497
    .local v6, key:Ljava/security/Key;
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 498
    .local v1, cipher:Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v1, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 500
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0xd8

    if-ne v8, v9, :cond_1

    .line 501
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #inputStream:Ljava/io/InputStream;
    .local v5, inputStream:Ljava/io/InputStream;
    move-object v4, v5

    .line 509
    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    :goto_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #generator:Ljavax/crypto/KeyGenerator;
    .end local v6           #key:Ljava/security/Key;
    :goto_2
    return-object v8

    .line 493
    .restart local v3       #generator:Ljavax/crypto/KeyGenerator;
    :cond_0
    :try_start_1
    new-instance v8, Lcom/android/mms/security/MySecureRandom;

    new-instance v9, Lcom/android/mms/security/SHA1PRNG_SecureRandomImpl;

    invoke-direct {v9}, Lcom/android/mms/security/SHA1PRNG_SecureRandomImpl;-><init>()V

    const-string v10, "htc20100416"

    invoke-direct {v8, v9, v10}, Lcom/android/mms/security/MySecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 504
    .end local v3           #generator:Ljavax/crypto/KeyGenerator;
    :catch_0
    move-exception v2

    .line 505
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    const/4 v8, 0x0

    goto :goto_2

    .line 503
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cipher:Ljavax/crypto/Cipher;
    .restart local v3       #generator:Ljavax/crypto/KeyGenerator;
    .restart local v6       #key:Ljava/security/Key;
    :cond_1
    :try_start_2
    new-instance v5, Ljavax/crypto/CipherInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private getOrCreateThreadId(Ljava/util/HashSet;)J
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide/16 v1, -0x1

    .line 1033
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 1039
    :goto_0
    return-wide v1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    .line 1037
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 1038
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRestoreStatus()Z
    .locals 1

    .prologue
    .line 1214
    sget-boolean v0, Lcom/android/mms/ui/RestoreActivity;->mRestoreSuccess:Z

    return v0
.end method

.method private isDelOldMsgSettingEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1152
    const/4 v1, 0x0

    .line 1153
    .local v1, result:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isStorageSettingEnable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1165
    :goto_0
    return v3

    .line 1158
    :cond_0
    :try_start_0
    const-string v3, "com.android.mms_preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/RestoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1161
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_auto_delete"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v2           #sp:Landroid/content/SharedPreferences;
    :goto_1
    move v3, v1

    .line 1165
    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RestoreActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get preference item [pref_key_auto_delete] failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isRestoring()Z
    .locals 1

    .prologue
    .line 1001
    sget-object v0, Lcom/android/mms/ui/RestoreActivity;->mResotreThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidColumnsMap([Ljava/lang/String;)Z
    .locals 7
    .parameter "columns"

    .prologue
    .line 729
    const/4 v1, 0x0

    .local v1, body:Z
    const/4 v0, 0x0

    .local v0, addr:Z
    const/4 v3, 0x0

    .local v3, date:Z
    const/4 v5, 0x0

    .line 730
    .local v5, type:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_4

    .line 731
    aget-object v2, p1, v4

    .line 732
    .local v2, column:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 733
    const-string v6, "body"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 734
    const/4 v1, 0x1

    .line 737
    :cond_0
    if-nez v0, :cond_1

    .line 738
    const-string v6, "address"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 739
    const/4 v0, 0x1

    .line 742
    :cond_1
    if-nez v3, :cond_2

    .line 743
    const-string v6, "date"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 744
    const/4 v3, 0x1

    .line 747
    :cond_2
    if-nez v5, :cond_3

    .line 748
    const-string v6, "type"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 749
    const/4 v5, 0x1

    .line 730
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 753
    .end local v2           #column:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private parseThreads(Ljava/io/BufferedReader;)Ljava/util/HashMap;
    .locals 25
    .parameter "backupFileReader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1046
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1047
    .local v9, head:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 1048
    new-instance v22, Ljava/io/IOException;

    const-string v23, "corrupt backup file."

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1051
    :cond_0
    const-string v22, "\\|"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1052
    .local v7, columns:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/mms/ui/RestoreActivity;->isValidColumnsMap([Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 1053
    new-instance v22, Ljava/io/IOException;

    const-string v23, "invalid columns map."

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1055
    :cond_1
    array-length v13, v7

    .line 1057
    .local v13, numberOfColumns:I
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1058
    .local v15, threadIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1059
    .local v19, threads:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v14, -0x1

    .line 1060
    .local v14, threadIdIdx:I
    const/4 v4, -0x1

    .line 1063
    .local v4, addressIdx:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v13, :cond_6

    .line 1065
    sget-boolean v22, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    if-eqz v22, :cond_3

    .line 1066
    const/4 v15, 0x0

    .line 1139
    .end local v15           #threadIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    return-object v15

    .line 1069
    .restart local v15       #threadIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_3
    const-string v22, "thread_id"

    aget-object v23, v7, v10

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1070
    move v14, v10

    .line 1063
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1071
    :cond_5
    const-string v22, "address"

    aget-object v23, v7, v10

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1072
    move v4, v10

    goto :goto_2

    .line 1074
    :cond_6
    if-lez v14, :cond_2

    if-lez v4, :cond_2

    .line 1075
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 1076
    .local v12, line:Ljava/lang/String;
    :goto_3
    if-eqz v12, :cond_e

    sget-boolean v22, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    if-nez v22, :cond_e

    .line 1079
    const-string v22, "\\|"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1080
    .local v6, backupValues:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v13, :cond_8

    .line 1081
    const-string v22, "RestoreActivity"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1082
    const-string v22, "RestoreActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "can\'t restore: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 1087
    :cond_8
    :goto_5
    sget-boolean v22, Lcom/android/mms/ui/RestoreActivity;->mPause:Z

    if-eqz v22, :cond_9

    .line 1089
    const-wide/16 v22, 0x1f4

    :try_start_0
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1090
    :catch_0
    move-exception v8

    .line 1091
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v22, "restoreFromBackupFile"

    const-string v23, "Interrupt of sleep"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v15, 0x0

    goto :goto_1

    .line 1096
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_9
    const-wide/16 v16, -0x1

    .line 1097
    .local v16, thread_id:J
    const/4 v3, 0x0

    .line 1098
    .local v3, address:Ljava/lang/String;
    const-string v22, "#null#"

    aget-object v23, v6, v14

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 1099
    aget-object v22, v6, v14

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1100
    :cond_a
    const-string v22, "#null#"

    aget-object v23, v6, v4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 1101
    aget-object v3, v6, v4

    .line 1102
    :cond_b
    const-string v22, "7358310694"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v22

    const/16 v23, 0x4f

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    .line 1103
    const/4 v2, 0x0

    .line 1106
    :cond_c
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-lez v22, :cond_7

    if-eqz v3, :cond_7

    .line 1107
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 1109
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1110
    .local v5, addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1114
    .end local v5           #addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 1115
    .restart local v5       #addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1116
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1121
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6           #backupValues:[Ljava/lang/String;
    .end local v16           #thread_id:J
    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    .line 1122
    .local v18, threadidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1123
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_f
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1125
    sget-boolean v22, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    if-eqz v22, :cond_10

    .line 1126
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1128
    :cond_10
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 1129
    .local v16, thread_id:Ljava/lang/Long;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 1130
    .restart local v5       #addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v22

    if-lez v22, :cond_f

    .line 1132
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/mms/ui/RestoreActivity;->getOrCreateThreadId(Ljava/util/HashSet;)J

    move-result-wide v20

    .line 1133
    .local v20, tid:J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_f

    .line 1134
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public static pauseRestore(Z)V
    .locals 5
    .parameter "pause"

    .prologue
    const/4 v4, 0x0

    .line 1005
    if-eqz p0, :cond_2

    .line 1006
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1007
    .local v1, pm:Landroid/os/PowerManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1008
    sput-boolean v4, Lcom/android/mms/ui/RestoreActivity;->mPause:Z

    .line 1020
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return-void

    .line 1010
    .restart local v1       #pm:Landroid/os/PowerManager;
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/ui/RestoreActivity;->mPause:Z

    .line 1011
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getBGhandler()Landroid/os/Handler;

    move-result-object v0

    .line 1012
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1013
    sget-object v2, Lcom/android/mms/ui/RestoreActivity;->RefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1014
    sget-object v2, Lcom/android/mms/ui/RestoreActivity;->RefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1019
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_2
    sput-boolean v4, Lcom/android/mms/ui/RestoreActivity;->mPause:Z

    goto :goto_0
.end method

.method private restoreClearAll(Ljava/lang/String;)Z
    .locals 12
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v8

    .line 524
    .local v8, backupReader:Ljava/io/Reader;
    if-nez v8, :cond_0

    .line 525
    const/4 v9, 0x0

    .line 548
    :goto_0
    return v9

    .line 527
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 528
    .local v6, backupFileReader:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 530
    .local v9, restoreSuccess:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->clearMessagesDatabase()V

    .line 531
    invoke-direct {p0, v6}, Lcom/android/mms/ui/RestoreActivity;->parseThreads(Ljava/io/BufferedReader;)Ljava/util/HashMap;

    move-result-object v10

    .line 532
    .local v10, threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v10, :cond_1

    .line 533
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 534
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v8

    .line 535
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    .end local v6           #backupFileReader:Ljava/io/BufferedReader;
    .local v7, backupFileReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v7, v10}, Lcom/android/mms/ui/RestoreActivity;->restoreFromBackupFile(Ljava/io/BufferedReader;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    const/4 v9, 0x1

    move-object v6, v7

    .line 541
    .end local v7           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v6       #backupFileReader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 543
    const-string v0, "content://sms/refreshthreads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 544
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 545
    .local v3, values2:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 546
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values2:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 540
    .end local v10           #threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 541
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 543
    const-string v0, "content://sms/refreshthreads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 544
    .restart local v2       #uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 545
    .restart local v3       #values2:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 546
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values2:Landroid/content/ContentValues;
    :goto_2
    throw v11

    :catch_1
    move-exception v0

    goto :goto_2

    .line 540
    .end local v6           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v7       #backupFileReader:Ljava/io/BufferedReader;
    .restart local v10       #threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_1
    move-exception v0

    move-object v11, v0

    move-object v6, v7

    .end local v7           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v6       #backupFileReader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private restoreFromBackupFile(Ljava/io/BufferedReader;Ljava/util/HashMap;)V
    .locals 22
    .parameter "backupFileReader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    .local p2, threadIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 579
    .local v15, head:Ljava/lang/String;
    if-nez v15, :cond_0

    .line 580
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupt backup file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    :cond_0
    const-string v2, "\\|"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 584
    .local v13, columns:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/ui/RestoreActivity;->isValidColumnsMap([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 585
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid columns map."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    :cond_1
    array-length v0, v13

    move/from16 v19, v0

    .line 588
    .local v19, numberOfColumns:I
    const/16 v17, 0x0

    .line 589
    .local v17, iLineCount:I
    const-string v2, "RestoreActivity"

    const-string v3, "Start Restore InsertSMS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 591
    .local v18, line:Ljava/lang/String;
    :goto_0
    if-eqz v18, :cond_c

    sget-boolean v2, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    if-nez v2, :cond_c

    .line 593
    const-string v2, "\\|"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 594
    .local v12, backupValues:[Ljava/lang/String;
    array-length v2, v12

    move/from16 v0, v19

    if-eq v2, v0, :cond_3

    .line 595
    const-string v2, "RestoreActivity"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    const-string v2, "RestoreActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t restore: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    goto :goto_0

    .line 601
    :cond_3
    :goto_2
    sget-boolean v2, Lcom/android/mms/ui/RestoreActivity;->mPause:Z

    if-eqz v2, :cond_4

    .line 603
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 604
    :catch_0
    move-exception v14

    .line 605
    .local v14, e:Ljava/lang/InterruptedException;
    const-string v2, "restoreFromBackupFile"

    const-string v3, "Interrupt of sleep"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    .end local v12           #backupValues:[Ljava/lang/String;
    .end local v14           #e:Ljava/lang/InterruptedException;
    :goto_3
    return-void

    .line 610
    .restart local v12       #backupValues:[Ljava/lang/String;
    :cond_4
    new-instance v5, Landroid/content/ContentValues;

    move/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 611
    .local v5, values:Landroid/content/ContentValues;
    const/16 v2, 0xc8

    move/from16 v0, v17

    if-lt v0, v2, :cond_5

    move/from16 v0, v17

    rem-int/lit16 v2, v0, 0xc8

    if-nez v2, :cond_5

    .line 613
    const-string v2, "content://sms/refreshthreads"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 614
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 616
    .end local v4           #uri:Landroid/net/Uri;
    :cond_5
    const/16 v16, 0x0

    .local v16, i:I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 617
    const-string v2, "_id"

    aget-object v3, v13, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 616
    :cond_6
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 622
    :cond_7
    const-string v2, "thread_id"

    aget-object v3, v13, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 623
    const-string v2, "#null#"

    aget-object v3, v12, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 624
    aget-object v2, v12, v16

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    .line 625
    .local v20, thread_id:Ljava/lang/Long;
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 626
    aget-object v3, v13, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    .line 632
    .end local v20           #thread_id:Ljava/lang/Long;
    :cond_8
    aget-object v2, v13, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/RestoreActivity;->checkSchema(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 633
    const-string v2, "RestoreActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skip lost column: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v13, v16

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 637
    :cond_9
    const-string v2, "#null#"

    aget-object v3, v12, v16

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 638
    aget-object v3, v13, v16

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 640
    :cond_a
    aget-object v2, v12, v16

    const-string v3, "\\|"

    const-string v6, "|"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\\'"

    const-string v6, "\'\'"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\r"

    const-string v6, "\r"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\n"

    const-string v6, "\n"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 644
    .local v21, v:Ljava/lang/String;
    aget-object v2, v13, v16

    move-object/from16 v0, v21

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 648
    .end local v21           #v:Ljava/lang/String;
    :cond_b
    const-string v2, "RestoreProcess"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 649
    add-int/lit8 v17, v17, 0x1

    .line 650
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/mms/ui/RestoreActivity;->restoreIfNecessary(Landroid/content/ContentValues;)Z

    .line 652
    sget-boolean v2, Lcom/android/mms/ui/RestoreActivity;->mPause:Z

    if-eqz v2, :cond_2

    .line 653
    const-string v2, "content://sms/refreshthreads"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 654
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 658
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v12           #backupValues:[Ljava/lang/String;
    .end local v16           #i:I
    :cond_c
    const-string v2, "content://sms/refreshthreads"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 659
    .restart local v4       #uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 660
    .local v9, values2:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v8, v4

    invoke-static/range {v6 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 661
    const-string v2, "RestoreActivity"

    const-string v3, "End Restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private restoreIfNecessary(Landroid/content/ContentValues;)Z
    .locals 14
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 757
    const-string v0, "body"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 758
    .local v8, body:Ljava/lang/String;
    const-string v0, "date"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 759
    .local v10, date:Ljava/lang/String;
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 760
    .local v7, addr:Ljava/lang/String;
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 762
    .local v11, type:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v8, :cond_1

    .end local v8           #body:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v10, :cond_2

    .end local v10           #date:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v7, :cond_3

    .end local v7           #addr:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v11, :cond_4

    .end local v11           #type:Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 768
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v12

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 772
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 774
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 775
    const-string v0, "RestoreActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "RestoreActivity"

    const-string v1, "record exists, skipped."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 786
    :goto_4
    return v0

    .line 762
    .end local v4           #selection:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .restart local v7       #addr:Ljava/lang/String;
    .restart local v8       #body:Ljava/lang/String;
    .restart local v10       #date:Ljava/lang/String;
    .restart local v11       #type:Ljava/lang/String;
    :cond_1
    const-string v8, ""

    goto/16 :goto_0

    .end local v8           #body:Ljava/lang/String;
    :cond_2
    const-string v10, ""

    goto :goto_1

    .end local v10           #date:Ljava/lang/String;
    :cond_3
    const-string v7, ""

    goto :goto_2

    .end local v7           #addr:Ljava/lang/String;
    :cond_4
    const-string v11, ""

    goto :goto_3

    .line 781
    .end local v11           #type:Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 785
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v0, v13

    .line 786
    goto :goto_4

    .line 781
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private restoreKeepUnread(Ljava/lang/String;)Z
    .locals 12
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v8

    .line 667
    .local v8, backupReader:Ljava/io/Reader;
    if-nez v8, :cond_0

    .line 668
    const/4 v9, 0x0

    .line 691
    :goto_0
    return v9

    .line 670
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 671
    .local v6, backupFileReader:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 673
    .local v9, restoreSuccess:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->clearMessagesDatabaseKeepUnread()V

    .line 674
    invoke-direct {p0, v6}, Lcom/android/mms/ui/RestoreActivity;->parseThreads(Ljava/io/BufferedReader;)Ljava/util/HashMap;

    move-result-object v10

    .line 675
    .local v10, threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v10, :cond_1

    .line 676
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 677
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v8

    .line 678
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    .end local v6           #backupFileReader:Ljava/io/BufferedReader;
    .local v7, backupFileReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v7, v10}, Lcom/android/mms/ui/RestoreActivity;->restoreFromBackupFile(Ljava/io/BufferedReader;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 680
    const/4 v9, 0x1

    move-object v6, v7

    .line 684
    .end local v7           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v6       #backupFileReader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 686
    const-string v0, "content://sms/refreshthreads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 687
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 688
    .local v3, values2:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 689
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values2:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 683
    .end local v10           #threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 684
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 686
    const-string v0, "content://sms/refreshthreads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 687
    .restart local v2       #uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 688
    .restart local v3       #values2:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 689
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values2:Landroid/content/ContentValues;
    :goto_2
    throw v11

    :catch_1
    move-exception v0

    goto :goto_2

    .line 683
    .end local v6           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v7       #backupFileReader:Ljava/io/BufferedReader;
    .restart local v10       #threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_1
    move-exception v0

    move-object v11, v0

    move-object v6, v7

    .end local v7           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v6       #backupFileReader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private retoreKeepAll(Ljava/lang/String;)Z
    .locals 12
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v8

    .line 702
    .local v8, backupReader:Ljava/io/Reader;
    if-nez v8, :cond_0

    .line 703
    const/4 v9, 0x0

    .line 725
    :goto_0
    return v9

    .line 705
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 706
    .local v6, backupFileReader:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 708
    .local v9, restoreSuccess:Z
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/mms/ui/RestoreActivity;->parseThreads(Ljava/io/BufferedReader;)Ljava/util/HashMap;

    move-result-object v10

    .line 709
    .local v10, threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v10, :cond_1

    .line 710
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 711
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->getBackupReader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v8

    .line 712
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    .end local v6           #backupFileReader:Ljava/io/BufferedReader;
    .local v7, backupFileReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v7, v10}, Lcom/android/mms/ui/RestoreActivity;->restoreFromBackupFile(Ljava/io/BufferedReader;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 714
    const/4 v9, 0x1

    move-object v6, v7

    .line 718
    .end local v7           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v6       #backupFileReader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 720
    const-string v0, "content://sms/refreshthreads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 721
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 722
    .local v3, values2:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 723
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values2:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 717
    .end local v10           #threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 718
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 720
    const-string v0, "content://sms/refreshthreads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 721
    .restart local v2       #uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 722
    .restart local v3       #values2:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 723
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values2:Landroid/content/ContentValues;
    :goto_2
    throw v11

    :catch_1
    move-exception v0

    goto :goto_2

    .line 717
    .end local v6           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v7       #backupFileReader:Ljava/io/BufferedReader;
    .restart local v10       #threadIDs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_1
    move-exception v0

    move-object v11, v0

    move-object v6, v7

    .end local v7           #backupFileReader:Ljava/io/BufferedReader;
    .restart local v6       #backupFileReader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private tryToReadLine(Ljava/io/Reader;)Z
    .locals 5
    .parameter "reader"

    .prologue
    .line 463
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 464
    .local v0, backupFileReader:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, head:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    const-string v3, "RestoreActivity"

    const-string v4, "readLine success."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v3, 0x1

    .end local v0           #backupFileReader:Ljava/io/BufferedReader;
    .end local v2           #head:Ljava/lang/String;
    :goto_0
    return v3

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "RestoreActivity"

    const-string v4, "readLine fail."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method confirmBackupFiles(Z)V
    .locals 3
    .parameter "deleteAll"

    .prologue
    .line 959
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 960
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 961
    if-eqz p1, :cond_0

    const v1, 0x7f090272

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 962
    if-eqz p1, :cond_1

    const v1, 0x7f09027f

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 964
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 965
    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/RestoreActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/RestoreActivity$9;-><init>(Lcom/android/mms/ui/RestoreActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 977
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 978
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 979
    return-void

    .line 961
    :cond_0
    const v1, 0x20c01fc

    goto :goto_0

    .line 962
    :cond_1
    const v1, 0x7f09027e

    goto :goto_1
.end method

.method confirmRetoreFromBackupFile()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 790
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f09028c

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 795
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->isDelOldMsgSettingEnabled()Z

    move-result v2

    if-ne v5, v2, :cond_0

    .line 796
    new-instance v1, Ljava/lang/String;

    const v2, 0x7f090267

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 797
    .local v1, strAutoDelete:Ljava/lang/String;
    const v2, 0x7f09027a

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/RestoreActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 803
    .end local v1           #strAutoDelete:Ljava/lang/String;
    :goto_0
    const v2, 0x20c015f

    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity;->mRestoreClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 804
    const v2, 0x20c0164

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 805
    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 806
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 807
    return-void

    .line 799
    :cond_0
    const v2, 0x7f090279

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method deleteAllBackupFiles()V
    .locals 4

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;

    .line 993
    .local v0, adapter:Lcom/android/mms/ui/RestoreActivity$MyListAdapter;
    invoke-virtual {v0}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->getCount()I

    move-result v1

    .line 994
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 995
    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 996
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 994
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 998
    .end local v2           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method deleteSelectedBackupFiles()V
    .locals 5

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;

    .line 983
    .local v0, adapter:Lcom/android/mms/ui/RestoreActivity$MyListAdapter;
    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity;->mSelectedItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 984
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 985
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 986
    .local v3, position:I
    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 987
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 989
    .end local v1           #f:Ljava/io/File;
    .end local v3           #position:I
    :cond_0
    return-void
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 293
    :cond_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method displayConfirmDialog()V
    .locals 3

    .prologue
    .line 1226
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1227
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0903d8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1228
    const v1, 0x7f0903d6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1229
    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/RestoreActivity$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RestoreActivity$11;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1234
    const v1, 0x20c0164

    new-instance v2, Lcom/android/mms/ui/RestoreActivity$12;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RestoreActivity$12;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1239
    new-instance v1, Lcom/android/mms/ui/RestoreActivity$13;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RestoreActivity$13;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1247
    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/ui/RestoreActivity;->mIsForeground:Z

    if-eqz v1, :cond_0

    .line 1248
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1251
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method displayProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 269
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f09027b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RestoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/mms/ui/RestoreActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RestoreActivity$7;-><init>(Lcom/android/mms/ui/RestoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 283
    return-void
.end method

.method displayResultDialog(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 296
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f09028c

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 298
    if-eqz p1, :cond_0

    const v1, 0x7f09027c

    .line 300
    .local v1, message:I
    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 301
    const v2, 0x20c015f

    new-instance v3, Lcom/android/mms/ui/RestoreActivity$8;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/RestoreActivity$8;-><init>(Lcom/android/mms/ui/RestoreActivity;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 310
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    return-void

    .line 298
    .end local v1           #message:I
    :cond_0
    const v1, 0x7f09027d

    goto :goto_0

    .line 311
    .restart local v1       #message:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 420
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RestoreActivity;->requestWindowFeature(I)Z

    .line 333
    new-instance v7, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    invoke-direct {v7}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 334
    .local v7, Headercomposer:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v0, 0x0

    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$BarText;

    const v4, 0x7f09028c

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    aput-object v1, v6, v0

    .line 337
    .local v6, Center:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
    iput-object v6, v7, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 338
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v0, v7, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 339
    new-instance v10, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    invoke-direct {v10}, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;-><init>()V

    .line 340
    .local v10, footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v1, 0x0

    new-instance v4, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v5, 0x20c0164

    invoke-direct {v4, v5}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v4, v0, v1

    const/4 v1, 0x1

    new-instance v4, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v5, 0x20c01fc

    invoke-direct {v4, v5}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v4, v0, v1

    iput-object v0, v10, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 344
    new-instance v8, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v8, p0, v7, v10}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 345
    .local v8, activityComposer:Lcom/android/mms/util/CommonActivityLayout;
    invoke-virtual {v8}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    invoke-virtual {v0}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RestoreActivity;->setContentView(Landroid/view/View;)V

    .line 348
    invoke-virtual {v8}, Lcom/android/mms/util/CommonActivityLayout;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 349
    .local v9, emptyView:Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 350
    const v0, 0x7f090281

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 352
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const-string v0, "RestoreActivity"

    const-string v1, "External storage unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    const v0, 0x7f090280

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 357
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->finish()V

    .line 395
    :goto_0
    return-void

    .line 361
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->backupFilesExist()Z

    move-result v0

    if-nez v0, :cond_5

    .line 362
    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    const-string v0, "RestoreActivity"

    const-string v1, "No backup files found on external storage."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isNotSupportSDCard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    const v0, 0x7f090283

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 369
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->finish()V

    goto :goto_0

    .line 368
    :cond_4
    const v0, 0x7f090282

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 374
    :cond_5
    iget-object v0, v10, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;

    .line 375
    iget-object v0, v10, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mNegativeButton:Landroid/widget/Button;

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mPositiveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/RestoreActivity;->mPositiveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mNegativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/RestoreActivity;->mNegativeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v11

    .line 380
    .local v11, listView:Lcom/htc/widget/HtcListView;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 381
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->switchToNormalView()V

    .line 385
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->pauseRestore(Z)V

    .line 388
    const-string v0, "content://sms/refreshthreads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 389
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 390
    .local v3, values2:Landroid/content/ContentValues;
    const-string v0, "ClearHashSet"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 391
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 945
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 955
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 947
    :pswitch_0
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[RestoreActivity]Delete backup files"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->switchToDeleteView()V

    goto :goto_0

    .line 951
    :pswitch_1
    const-string v1, "ANALYTIC_Mms"

    const-string v2, "[RestoreActivity]Delete all backup files"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RestoreActivity;->confirmBackupFiles(Z)V

    goto :goto_0

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/RestoreActivity;->mIsForeground:Z

    .line 401
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->pauseRestore(Z)V

    .line 402
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const v3, 0x7f020121

    const/4 v2, 0x0

    .line 929
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 932
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v0, v0, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 933
    const/16 v0, 0x3e9

    const v1, 0x7f090272

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 940
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RestoreActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 936
    const/16 v0, 0x3e8

    const v1, 0x20c01fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 407
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/RestoreActivity;->mIsForeground:Z

    .line 409
    const-string v0, "RestoreActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreActivity onResume: mIsForeground >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/RestoreActivity;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->pauseRestore(Z)V

    .line 411
    return-void
.end method

.method restore(Ljava/lang/String;)Z
    .locals 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 427
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 428
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_restore_setting"

    const-string v3, "keepall"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, setting:Ljava/lang/String;
    sput-boolean v4, Lcom/android/mms/ui/RestoreActivity;->mIsCanceled:Z

    .line 432
    sput-boolean v4, Lcom/android/mms/ui/RestoreActivity;->mRestoreSuccess:Z

    .line 434
    const-string v2, "clearall"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->restoreClearAll(Ljava/lang/String;)Z

    move-result v2

    .line 439
    :goto_0
    return v2

    .line 436
    :cond_0
    const-string v2, "keepunread"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->restoreKeepUnread(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RestoreActivity;->retoreKeepAll(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method switchToDeleteView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v3, v3, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    .line 230
    .local v2, listView:Lcom/htc/widget/HtcListView;
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity;->mItemCheckListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 232
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->getBackupFileList()[Ljava/io/File;

    move-result-object v1

    .line 233
    .local v1, backupFileList:[Ljava/io/File;
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;-><init>(Landroid/content/Context;I[Ljava/io/File;Lcom/htc/widget/HtcListView;)V

    .line 234
    .local v0, adapter:Lcom/android/mms/ui/RestoreActivity$MyListAdapter;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->setCheckable(Z)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RestoreActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity;->mSelectedItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 238
    return-void
.end method

.method switchToNormalView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 200
    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity;->mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    iget-object v4, v4, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->mFooter:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/mms/ui/RestoreActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    .line 203
    .local v3, listView:Lcom/htc/widget/HtcListView;
    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 205
    invoke-direct {p0}, Lcom/android/mms/ui/RestoreActivity;->getBackupFileList()[Ljava/io/File;

    move-result-object v1

    .line 206
    .local v1, backupFileList:[Ljava/io/File;
    new-instance v0, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;

    invoke-direct {v0, p0, v5, v1, v3}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;-><init>(Landroid/content/Context;I[Ljava/io/File;Lcom/htc/widget/HtcListView;)V

    .line 207
    .local v0, adapter:Lcom/android/mms/ui/RestoreActivity$MyListAdapter;
    invoke-virtual {v0, v5}, Lcom/android/mms/ui/RestoreActivity$MyListAdapter;->setCheckable(Z)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RestoreActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity;->mSelectedItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 211
    const v4, 0x7f0e000f

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/RestoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 212
    .local v2, emptyView:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    array-length v4, v1

    if-nez v4, :cond_1

    .line 213
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 214
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 220
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
