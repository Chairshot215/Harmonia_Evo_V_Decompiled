.class Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;
.super Landroid/os/AsyncTask;
.source "MessagingShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiveShortCutTask"
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
.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private final mResultCode:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resultCode"

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->mContext:Landroid/content/Context;

    .line 229
    iput p2, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->mResultCode:I

    .line 230
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 5
    .parameter "intents"

    .prologue
    const/4 v1, 0x0

    .line 234
    aget-object v0, p1, v1

    .line 236
    .local v0, intent:Landroid/content/Intent;
    iput v1, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->mCount:I

    .line 238
    iget-object v1, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->mCount:I

    iget-object v3, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessagingShortcut;->updateMessagingShortcut(Landroid/content/Context;ILjava/lang/String;)V

    .line 240
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->mCount:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 253
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 222
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessagingShortcutReceiver$ReceiveShortCutTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
