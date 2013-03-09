.class public Lcom/android/mms/util/ScheduledDialogActivity;
.super Landroid/app/Activity;
.source "ScheduledDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;,
        Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;
    }
.end annotation


# static fields
.field private static BODYTXT_KEY:Ljava/lang/String; = null

.field private static CANCELD_KEY:Ljava/lang/String; = null

.field public static CLASS_ZERO_KEY:I = 0x0

.field private static DEFAULT_KEY:I = 0x0

.field public static DEVICE_FULL_KEY:I = 0x0

.field public static GHOST_KEY:I = 0x0

.field public static GS_ZERO_KEY:I = 0x0

.field private static HYPERLINK_KEY:Ljava/lang/String; = null

.field private static LISTENER_KEY:Ljava/lang/String; = null

.field private static LISTENER_KEY_SIZE:I = 0x0

.field private static MessageQueue:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static NEGATIVE_BTN_KEY:Ljava/lang/String; = null

.field private static POSITIVE_BTN_KEY:Ljava/lang/String; = null

.field private static final SHOW_DIALOG:I = 0x1

.field public static SMS_ERROR_KEY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScheduledDialogActivity"

.field private static TITLE_ICON_KEY:Ljava/lang/String;

.field private static TITLE_KEY:Ljava/lang/String;

.field private static sBtnlistener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;


# instance fields
.field private final NegativeBtnListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCurrentInfo:Landroid/content/Intent;

.field private mListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

.field private final mMsgHandler:Landroid/os/Handler;

.field private final mPositiveBtnListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 80
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->sBtnlistener:Ljava/util/HashMap;

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/util/ScheduledDialogActivity;->DEFAULT_KEY:I

    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/util/ScheduledDialogActivity;->CLASS_ZERO_KEY:I

    .line 93
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/util/ScheduledDialogActivity;->GS_ZERO_KEY:I

    .line 94
    const/4 v0, 0x3

    sput v0, Lcom/android/mms/util/ScheduledDialogActivity;->DEVICE_FULL_KEY:I

    .line 95
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/util/ScheduledDialogActivity;->SMS_ERROR_KEY:I

    .line 97
    sput v2, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY_SIZE:I

    .line 98
    const/16 v0, 0xc8

    sput v0, Lcom/android/mms/util/ScheduledDialogActivity;->GHOST_KEY:I

    .line 102
    const-string v0, "title"

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_KEY:Ljava/lang/String;

    .line 103
    const-string v0, "negativeBTN"

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->NEGATIVE_BTN_KEY:Ljava/lang/String;

    .line 104
    const-string v0, "positiveBTN"

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->POSITIVE_BTN_KEY:Ljava/lang/String;

    .line 105
    const-string v0, "isCancel"

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->CANCELD_KEY:Ljava/lang/String;

    .line 106
    const-string v0, "hasHyperlink"

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->HYPERLINK_KEY:Ljava/lang/String;

    .line 107
    const-string v0, "listenerKey"

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    .line 108
    const-string v0, "bodytextKey"

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->BODYTXT_KEY:Ljava/lang/String;

    .line 109
    const-string v0, "title_icon"

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_ICON_KEY:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    invoke-direct {v0}, Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;-><init>()V

    sput-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->sListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    .line 118
    sget v0, Lcom/android/mms/util/ScheduledDialogActivity;->DEFAULT_KEY:I

    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->sListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    invoke-static {v0, v1}, Lcom/android/mms/util/ScheduledDialogActivity;->resgisterListener(ILcom/android/mms/util/ScheduledDialogActivity$buttonListener;)V

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mMsgHandler:Landroid/os/Handler;

    .line 391
    new-instance v0, Lcom/android/mms/util/ScheduledDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/ScheduledDialogActivity$2;-><init>(Lcom/android/mms/util/ScheduledDialogActivity;)V

    iput-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mPositiveBtnListener:Landroid/content/DialogInterface$OnClickListener;

    .line 402
    new-instance v0, Lcom/android/mms/util/ScheduledDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/util/ScheduledDialogActivity$3;-><init>(Lcom/android/mms/util/ScheduledDialogActivity;)V

    iput-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity;->NegativeBtnListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/android/mms/util/ScheduledDialogActivity;->DEFAULT_KEY:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/ScheduledDialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->showMsg()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/util/ScheduledDialogActivity;)Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/ScheduledDialogActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/ScheduledDialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->runSchedule()V

    return-void
.end method

.method public static createDlgIntent(Landroid/content/Context;Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 146
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/util/ScheduledDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_KEY:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->title:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0900b6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v1, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->negativeStr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 149
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->NEGATIVE_BTN_KEY:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->negativeStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_1
    iget-object v1, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->positiveStr:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 151
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->POSITIVE_BTN_KEY:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->positiveStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    :cond_2
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->HYPERLINK_KEY:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->hasHyperlink:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->CANCELD_KEY:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->cancelable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    iget v2, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->listenerKey:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->BODYTXT_KEY:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->bodyStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_ICON_KEY:Ljava/lang/String;

    iget v2, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->title_icon:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p1, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public static declared-synchronized resgisterListener(ILcom/android/mms/util/ScheduledDialogActivity$buttonListener;)V
    .locals 3
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 181
    const-class v1, Lcom/android/mms/util/ScheduledDialogActivity;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->sBtnlistener:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->sBtnlistener:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit v1

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private runSchedule()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mMsgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/util/ScheduledDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/util/ScheduledDialogActivity$1;-><init>(Lcom/android/mms/util/ScheduledDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method private showMsg()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 358
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->finish()V

    .line 378
    :goto_0
    return-void

    .line 362
    :cond_1
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    .line 363
    sget-object v1, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    sget v3, Lcom/android/mms/util/ScheduledDialogActivity;->DEFAULT_KEY:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, listenKey:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/util/ScheduledDialogActivity;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 189
    .local v4, theWindow:Landroid/view/Window;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 192
    .local v1, it:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 193
    .local v0, bError:Z
    if-eqz p1, :cond_0

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, str:Ljava/lang/String;
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    if-eqz v3, :cond_2

    .line 197
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :goto_0
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->NEGATIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    if-eqz v3, :cond_3

    .line 204
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->NEGATIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :goto_1
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->POSITIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_4

    .line 210
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->POSITIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    :goto_2
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->BODYTXT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_5

    .line 216
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->BODYTXT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :goto_3
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->HYPERLINK_KEY:Ljava/lang/String;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->HYPERLINK_KEY:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->CANCELD_KEY:Ljava/lang/String;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->CANCELD_KEY:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->CANCELD_KEY:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_ICON_KEY:Ljava/lang/String;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_ICON_KEY:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 229
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    sget v6, Lcom/android/mms/util/ScheduledDialogActivity;->DEFAULT_KEY:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 230
    .local v2, listenKey:I
    sget v5, Lcom/android/mms/util/ScheduledDialogActivity;->GHOST_KEY:I

    if-eq v2, v5, :cond_1

    .line 231
    sget-object v5, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 233
    .end local v2           #listenKey:I
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->runSchedule()V

    .line 237
    return-void

    .line 199
    .restart local v3       #str:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 212
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 218
    :cond_5
    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    :goto_1
    return-object v4

    .line 284
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 285
    sget-object v4, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    .line 286
    sget-object v4, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 287
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 291
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 293
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    sget v7, Lcom/android/mms/util/ScheduledDialogActivity;->DEFAULT_KEY:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 295
    .local v3, listenKey:I
    if-ltz v3, :cond_2

    sget v4, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY_SIZE:I

    if-lt v3, v4, :cond_6

    .line 296
    :cond_2
    sget-object v4, Lcom/android/mms/util/ScheduledDialogActivity;->sBtnlistener:Ljava/util/HashMap;

    sget v6, Lcom/android/mms/util/ScheduledDialogActivity;->DEFAULT_KEY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    iput-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    .line 302
    :goto_2
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->POSITIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 303
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->POSITIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mPositiveBtnListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 305
    :cond_3
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->NEGATIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 306
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->NEGATIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/mms/util/ScheduledDialogActivity;->NegativeBtnListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 309
    :cond_4
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_ICON_KEY:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 310
    .local v2, icon_id:I
    if-ltz v2, :cond_5

    .line 311
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 313
    :cond_5
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->CANCELD_KEY:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 315
    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v6, Lcom/android/mms/util/ScheduledDialogActivity;->BODYTXT_KEY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v7, Lcom/android/mms/util/ScheduledDialogActivity;->HYPERLINK_KEY:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0xf

    :goto_3
    invoke-virtual {v0, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 318
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    goto/16 :goto_1

    .line 298
    .end local v2           #icon_id:I
    :cond_6
    sget-object v4, Lcom/android/mms/util/ScheduledDialogActivity;->sBtnlistener:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;

    iput-object v4, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mListener:Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 319
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v3           #listenKey:I
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ScheduledDialogActivity"

    const-string v5, "Message queue is out of Bounds"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v2       #icon_id:I
    .restart local v3       #listenKey:I
    :cond_7
    move v4, v5

    .line 315
    goto :goto_3

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 276
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 242
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 9
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x0

    .line 331
    packed-switch p1, :pswitch_data_0

    .line 354
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 355
    return-void

    .line 334
    :pswitch_0
    const/4 v2, 0x0

    .line 335
    .local v2, cstitle:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 336
    .local v1, bodytext:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 338
    .local v4, hyperlinkkey:I
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 339
    iget-object v6, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v7, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    iget-object v6, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v7, Lcom/android/mms/util/ScheduledDialogActivity;->BODYTXT_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    iget-object v6, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v7, Lcom/android/mms/util/ScheduledDialogActivity;->HYPERLINK_KEY:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v4, 0xf

    .line 344
    :cond_1
    :goto_1
    if-eqz p2, :cond_0

    .line 345
    move-object v0, p2

    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    move-object v5, v0

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    move-object v0, p2

    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    move-object v5, v0

    invoke-virtual {v5, v1, v4}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v3

    .line 350
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "ScheduledDialogActivity"

    const-string v6, "Message queue is out of Bounds"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    move v4, v5

    .line 341
    goto :goto_1

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    iget-object v0, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->NEGATIVE_BTN_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->NEGATIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->POSITIVE_BTN_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->POSITIVE_BTN_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->BODYTXT_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->BODYTXT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->HYPERLINK_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->HYPERLINK_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->CANCELD_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->CANCELD_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    sget v3, Lcom/android/mms/util/ScheduledDialogActivity;->DEFAULT_KEY:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_ICON_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/util/ScheduledDialogActivity;->mCurrentInfo:Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->TITLE_ICON_KEY:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 253
    invoke-virtual {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->detectGotoHome(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->finish()V

    .line 257
    :cond_0
    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->MessageQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 258
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/mms/util/ScheduledDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/mms/util/ScheduledDialogActivity;->LISTENER_KEY:Ljava/lang/String;

    sget v3, Lcom/android/mms/util/ScheduledDialogActivity;->GHOST_KEY:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const/high16 v2, 0x1800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/util/ScheduledDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 263
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
