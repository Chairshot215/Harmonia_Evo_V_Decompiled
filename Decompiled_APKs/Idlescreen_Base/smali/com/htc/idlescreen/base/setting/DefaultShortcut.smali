.class public Lcom/htc/idlescreen/base/setting/DefaultShortcut;
.super Ljava/lang/Object;
.source "DefaultShortcut.java"


# static fields
.field public static final APP_CLASSs:[Ljava/lang/String;

.field public static final APP_PACKAGENAMEs:[Ljava/lang/String;

.field public static BROWSER_CLASSNAME:Ljava/lang/String;

.field public static BROWSER_PACKAGENAME:Ljava/lang/String;

.field public static CALENDAR_CLASSNAME:Ljava/lang/String;

.field public static CALENDAR_PACKAGENAME:Ljava/lang/String;

.field public static CAMERA_CLASSNAME:Ljava/lang/String;

.field public static CAMERA_PACKAGENAME:Ljava/lang/String;

.field public static MAIL_CLASSNAME:Ljava/lang/String;

.field public static MAIL_PACKAGENAME:Ljava/lang/String;

.field public static MESSAGE_CLASSNAME:Ljava/lang/String;

.field public static MESSAGE_PACKAGENAME:Ljava/lang/String;

.field public static PHONE_CLASSNAME:Ljava/lang/String;

.field public static PHONE_PACKAGENAME:Ljava/lang/String;

.field public static TASK_CLASSNAME:Ljava/lang/String;

.field public static TASK_PACKAGENAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    const-string v0, "com.android.htcdialer"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->PHONE_PACKAGENAME:Ljava/lang/String;

    .line 8
    const-string v0, "com.htc.android.mail"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_PACKAGENAME:Ljava/lang/String;

    .line 9
    const-string v0, "com.android.camera"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CAMERA_PACKAGENAME:Ljava/lang/String;

    .line 10
    const-string v0, "com.android.mms"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MESSAGE_PACKAGENAME:Ljava/lang/String;

    .line 11
    const-string v0, "com.htc.calendar"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CALENDAR_PACKAGENAME:Ljava/lang/String;

    .line 12
    const-string v0, "com.android.browser"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->BROWSER_PACKAGENAME:Ljava/lang/String;

    .line 14
    const-string v0, "com.android.htcdialer.Dialer"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->PHONE_CLASSNAME:Ljava/lang/String;

    .line 15
    const-string v0, "com.htc.android.mail.MailListTab"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_CLASSNAME:Ljava/lang/String;

    .line 16
    const-string v0, "com.android.camera.CameraEntry"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CAMERA_CLASSNAME:Ljava/lang/String;

    .line 17
    const-string v0, "com.android.mms.ui.ConversationList"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MESSAGE_CLASSNAME:Ljava/lang/String;

    .line 18
    const-string v0, "com.htc.calendar.LaunchActivity"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CALENDAR_CLASSNAME:Ljava/lang/String;

    .line 19
    const-string v0, "com.android.browser.BrowserActivity"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->BROWSER_CLASSNAME:Ljava/lang/String;

    .line 21
    const-string v0, "com.htc.task"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->TASK_PACKAGENAME:Ljava/lang/String;

    .line 22
    const-string v0, "com.htc.task.TaskListViewActivity"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->TASK_CLASSNAME:Ljava/lang/String;

    .line 24
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    .line 25
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    .line 27
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "com.htc.android.mail.MultipleActivitiesMain"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_CLASSNAME:Ljava/lang/String;

    .line 29
    const-string v0, "com.android.mms.MultipleActivitiesMain"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MESSAGE_CLASSNAME:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_PACKAGENAME:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 31
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CALENDAR_PACKAGENAME:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 32
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->BROWSER_PACKAGENAME:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 33
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CAMERA_PACKAGENAME:Ljava/lang/String;

    aput-object v1, v0, v5

    .line 35
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_CLASSNAME:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 36
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CALENDAR_CLASSNAME:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 37
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->BROWSER_CLASSNAME:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 38
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CAMERA_CLASSNAME:Ljava/lang/String;

    aput-object v1, v0, v5

    .line 60
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/htc/lockscreen/HtcLSUtility;->getSenseVersion()F

    move-result v0

    const/high16 v1, 0x4060

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 42
    const-string v0, "com.android.htccontacts"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->PHONE_PACKAGENAME:Ljava/lang/String;

    .line 43
    const-string v0, "com.android.htccontacts.DialerTabActivity"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->PHONE_CLASSNAME:Ljava/lang/String;

    .line 46
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_2

    .line 47
    const-string v0, "com.android.mms.ui.MessageTabActivity"

    sput-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MESSAGE_CLASSNAME:Ljava/lang/String;

    .line 50
    :cond_2
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->PHONE_PACKAGENAME:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 51
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_PACKAGENAME:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 52
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CAMERA_PACKAGENAME:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 53
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MESSAGE_PACKAGENAME:Ljava/lang/String;

    aput-object v1, v0, v5

    .line 55
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->PHONE_CLASSNAME:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 56
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MAIL_CLASSNAME:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 57
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->CAMERA_CLASSNAME:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 58
    sget-object v0, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    sget-object v1, Lcom/htc/idlescreen/base/setting/DefaultShortcut;->MESSAGE_CLASSNAME:Ljava/lang/String;

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
