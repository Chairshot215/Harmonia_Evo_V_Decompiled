.class public Lcom/htc/tasklib/TaskContract;
.super Ljava/lang/Object;
.source "TaskContract.java"


# static fields
.field public static final ACTION_CREATE_TASK:Ljava/lang/String; = "com.htc.task.ACTION_CREATE_TASK"

.field public static final ACTION_EDIT_TASK:Ljava/lang/String; = "com.htc.task.ACTION_EDIT_TASK"

.field public static final ACTION_SYNC_COMPLETE:Ljava/lang/String; = "com.htc.task.SYNC_COMPLETE"

.field public static final ACTION_VIEW_TASK:Ljava/lang/String; = "com.htc.task.ACTION_VIEW_TASK"

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.task.dm"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final EXTRA_ADDED_BODY:Ljava/lang/String; = "com.htc.task.ADDED_BODY"

.field public static final EXTRA_ADDED_FIELDS_BUNDLE:Ljava/lang/String; = "com.htc.task.ADDED_FIELDS_BUNDLE"

.field public static final EXTRA_ADDED_PINTENT_ACTION:Ljava/lang/String; = "com.htc.task.ADDED_PINTENT_ACTION"

.field public static final EXTRA_ADDED_PINTENT_DATA:Ljava/lang/String; = "com.htc.task.ADDED_PINTENT_DATA"

.field public static final EXTRA_ADDED_TITLE:Ljava/lang/String; = "com.htc.task.ADDED_TITLE"

.field public static final EXTRA_IMPORTER:Ljava/lang/String; = "com.htc.task.IMPORTER"

.field public static final EXTRA_PLUGIN_BIND_STR_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.extra.task.ACCOUNT_TYPE"

.field public static final EXTRA_REQUEST_SYNC_BOOL_MANUALLY:Ljava/lang/String; = "com.htc.extra.task.sync_manually"

.field public static final EXTRA_REQUEST_SYNC_STR_ACCOUNT:Ljava/lang/String; = "com.htc.extra.task.account"

.field public static final EXTRA_REQUEST_SYNC_STR_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.extra.task.ACCOUNT_TYPE"

.field public static final EXTRA_SYNC_COMPLETE_INT_ERROR_CODE:Ljava/lang/String; = "ERROR_CODE"

.field public static final EXTRA_SYNC_COMPLETE_INT_STATUS_CODE:Ljava/lang/String; = "STATUS_CODE"

.field public static final EXTRA_SYNC_COMPLETE_STR_ACCOUNT:Ljava/lang/String; = "ACCOUNT"

.field public static final EXTRA_SYNC_COMPLETE_STR_ERROR_MSG:Ljava/lang/String; = "ERROR_MSG"

.field public static final EXTRA_SYNC_COMPLETE_STR_PKG_NAME:Ljava/lang/String; = "PKG_NAME"

.field public static final EXTRA_TASK_ACCOUNT_NAME:Ljava/lang/String; = "com.htc.task.TASK_ACCOUNT_NAME"

.field public static final EXTRA_TASK_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.task.TASK_ACCOUNT_TYPE"

.field public static final EXTRA_TASK_CONTACT_ID:Ljava/lang/String; = "com.htc.task.TASK_CONTACT_ID"

.field public static final EXTRA_TASK_DESCRIPTION:Ljava/lang/String; = "com.htc.task.TASK_DESCRIPTION"

.field public static final EXTRA_TASK_REMINDER:Ljava/lang/String; = "com.htc.task.TASK_REMINDER"

.field public static final EXTRA_TASK_TITLE:Ljava/lang/String; = "com.htc.task.TASK_TITLE"

.field public static final EXTRA_TASK_TOAST_MESSAGE:Ljava/lang/String; = "com.htc.task.TASK_TOAST_MESSAGE"

.field public static final INTENT_ACTION_REQUEST_SYNC:Ljava/lang/String; = "com.htc.task.ACTION_REQUEST_SYNC"

.field static final PATH_ACCOUNT_NAME:Ljava/lang/String; = "ANAME"

.field static final PATH_ACCOUNT_TYPE:Ljava/lang/String; = "ATYPE"

.field static final PATH_TASKSOURCE:Ljava/lang/String; = "TS"

.field public static final PLUGIN_BIND_INTENT:Ljava/lang/String; = "com.htc.task.source"

.field public static final PLUGIN_FEATURE_NAME:Ljava/lang/String; = "TaskSource"

.field static final SIE_TASKLIST:Ljava/lang/String; = "SIE_TaskList"

.field static final TABLE_ACCOUNT:Ljava/lang/String; = "Account"

.field static final TABLE_TASKLIST:Ljava/lang/String; = "TaskList"

.field static final TABLE_TODOTASK:Ljava/lang/String; = "TodoTask"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "content://com.htc.task.dm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/tasklib/TaskContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/htc/tasklib/TaskContract;->getBaseUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 61
    sget-object v1, Lcom/htc/tasklib/TaskContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "ATYPE"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string v1, "ANAME"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    :cond_0
    return-object v0
.end method

.method public static getSIECustomizedList(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 99
    sget-object v1, Lcom/htc/tasklib/TaskContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "TS"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    const-string v1, "SIE_TaskList"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method public static getTaskSourceAccountUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 91
    sget-object v1, Lcom/htc/tasklib/TaskContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "TS"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 92
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    const-string v1, "Account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public static getTaskUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/htc/tasklib/TaskContract;->getBaseUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "TodoTask"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getTasklistUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/htc/tasklib/TaskContract;->getBaseUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "TaskList"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    return-object v0
.end method
