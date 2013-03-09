.class public Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;,
        Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCHER_BAR_CHANGED:Ljava/lang/String; = "com.htc.launcher.intent.LAUNCHER_BAR_CHANGED"

.field public static final ACTION_UPDATE_MISSCALL_COUNT:Ljava/lang/String; = "com.android.phone.action.update_misscall_count"

.field public static final ACTION_UPDATE_TASK_COUNT:Ljava/lang/String; = "com.htc.task.action.idlescreen.update_count"

.field public static final ACTION_UPDATE_UNREAD_MAIL_COUNT:Ljava/lang/String; = "com.htc.android.mail.action.update_unread_mail_count"

.field public static final ACTION_UPDATE_UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "com.htc.message.action.update_unread_message_count"

.field public static final BUBBLE_STYLE_NEW:I = 0x2

.field public static final BUBBLE_STYLE_UNREAD:I = 0x1

.field public static final EXTRA_BUBBLE_STYLE:Ljava/lang/String; = "bubble_style"

.field public static final EXTRA_ICON_RES:Ljava/lang/String; = "icon_res"

.field public static final EXTRA_MISS_CALL:Ljava/lang/String; = "misscall_count"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_UNREAD_MAIL:Ljava/lang/String; = "unread_mail_count"

.field public static final EXTRA_UNREAD_MESSAGE:Ljava/lang/String; = "unread_message_count"

.field private static final LOG_PREFIX:Ljava/lang/String; = "ShortcutReceiver"

.field public static final MAIL_PACKAGENAME:Ljava/lang/String; = "com.htc.android.mail"

.field public static final MESSAGE_PACKAGENAME:Ljava/lang/String; = "com.android.mms"

.field public static final MISSCALL_COUNT:Ljava/lang/String; = "misscall_count"

.field public static final PHONE_PACKAGENAME:Ljava/lang/String; = "com.android.htcdialer"

.field public static final SHORTCUT_ICONTYPE_BITMAP:I = 0x1

.field public static final SHORTCUT_ICONTYPE_RESOURCE:I = 0x0

.field public static final TASK_COUNT:Ljava/lang/String; = "count"

.field public static final UNREAD_MAIL_COUNT:Ljava/lang/String; = "unread_mail_count"

.field public static final UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "unread_message_count"

.field private static mMissedCall:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

.field private static mTaskCount:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

.field private static mUnreadMail:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

.field private static mUnreadMsg:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;


# instance fields
.field private mCallback:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->PHONE_PACKAGENAME:Ljava/lang/String;

    sget-object v2, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->PHONE_CLASSNAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mMissedCall:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 57
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MESSAGE_PACKAGENAME:Ljava/lang/String;

    sget-object v2, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MESSAGE_CLASSNAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mUnreadMsg:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 58
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_PACKAGENAME:Ljava/lang/String;

    sget-object v2, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_CLASSNAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mUnreadMail:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    .line 59
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->TASK_PACKAGENAME:Ljava/lang/String;

    sget-object v2, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->TASK_CLASSNAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mTaskCount:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 150
    return-void
.end method

.method private notifyCallback(Landroid/content/Context;Ljava/lang/String;Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "info"

    .prologue
    .line 127
    const-string v1, "ShortcutReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCallback packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIconRes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mIconRes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStyle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mStyle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mCallback:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;

    .line 133
    .local v0, callback:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p2, p3}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;->onAppNotifyCountUpdate(Ljava/lang/String;Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;)V

    .line 136
    :cond_0
    return-void
.end method

.method private quaryShortcutInfo(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mCallback:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;

    .line 121
    .local v0, callback:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;->onAppNotifyUpdate()V

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public getMissedCallCnt()I
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mMissedCall:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    iget v0, v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mCount:I

    return v0
.end method

.method public getUnreadMailCnt()I
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mUnreadMail:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    iget v0, v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mCount:I

    return v0
.end method

.method public getUnreadMsgCnt()I
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mUnreadMsg:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;

    iget v0, v0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutInfo;->mCount:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v1, "ShortcutReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "com.htc.launcher.intent.LAUNCHER_BAR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "ShortcutReceiver"

    const-string v2, "recvice bar change message"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->quaryShortcutInfo(Landroid/content/Context;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver;->mCallback:Lcom/htc/idlescreen/base/ctrl/ShortcutReceiver$ShortcutCallback;

    .line 73
    return-void
.end method
