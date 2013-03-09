.class Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;
.super Landroid/os/AsyncTask;
.source "MessagingShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortCutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mResultCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessagingShortcutReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 6
    .parameter "intents"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-static {v5}, Lcom/android/mms/ui/MessagingShortcutReceiver;->access$002(Z)Z

    .line 74
    aget-object v0, p1, v4

    .line 75
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 84
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {v4}, Lcom/android/mms/ui/MessagingShortcutReceiver;->access$002(Z)Z

    .line 86
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/mms/ui/MessagingShortcut;->updateMessagingShortcut(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessagingShortcutReceiver$ShortCutTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
