.class Lcom/android/htccontacts/ui/ContactsPreferencesActivity$1;
.super Landroid/os/Handler;
.source "ContactsPreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ContactsPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$1;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 176
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x270f

    if-ne v1, v2, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$1;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setResultExtra()V

    .line 179
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$1;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->finish()V

    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 187
    return-void

    .line 180
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x22b8

    if-ne v1, v2, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$1;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    #calls: Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->doSavePrefs()V
    invoke-static {v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->access$000(Lcom/android/htccontacts/ui/ContactsPreferencesActivity;)V

    goto :goto_0

    .line 182
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1a0a

    if-ne v1, v2, :cond_0

    .line 183
    const-string v1, "ContactsPreferencesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/htccontacts/ui/ContactsPreferencesActivity$1;->this$0:Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v0, :cond_3

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;->setAllChildToggle(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
