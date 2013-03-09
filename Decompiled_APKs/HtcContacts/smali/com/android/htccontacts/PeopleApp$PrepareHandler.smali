.class Lcom/android/htccontacts/PeopleApp$PrepareHandler;
.super Landroid/os/Handler;
.source "PeopleApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/PeopleApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareHandler"
.end annotation


# instance fields
.field appRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/PeopleApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/PeopleApp;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 183
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->appRef:Ljava/lang/ref/WeakReference;

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 188
    iget-object v3, p0, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->appRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/PeopleApp;

    .line 189
    .local v0, app:Lcom/android/htccontacts/PeopleApp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/PeopleApp;->isTerminating()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 242
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 194
    :sswitch_0
    #getter for: Lcom/android/htccontacts/PeopleApp;->mPreInflatedTabLayoutView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/htccontacts/PeopleApp;->access$000(Lcom/android/htccontacts/PeopleApp;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/htccontacts/PeopleApp;->mPreInflatedAllContactListView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/htccontacts/PeopleApp;->access$100(Lcom/android/htccontacts/PeopleApp;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 195
    #calls: Lcom/android/htccontacts/PeopleApp;->preInflateTabLayout()V
    invoke-static {v0}, Lcom/android/htccontacts/PeopleApp;->access$200(Lcom/android/htccontacts/PeopleApp;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 201
    :sswitch_1
    const-string v2, ""

    .line 202
    .local v2, presenceService:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.android.contacts.im.skype.SYNC"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/PeopleApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    const-string v3, "com.android.contacts.im.VoIP.SYNC"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/PeopleApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SKYPE, HTC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    const-string v3, "PeopleApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscribe presence service - ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/htccontacts/PeopleApp;->hasSubscribedPresenceService:Z

    goto :goto_0

    .line 225
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #presenceService:Ljava/lang/String;
    :sswitch_2
    const-string v2, ""

    .line 226
    .restart local v2       #presenceService:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 235
    .restart local v1       #i:Landroid/content/Intent;
    const-string v3, "PeopleApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsubscribe presence service - ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/htccontacts/PeopleApp;->hasSubscribedPresenceService:Z

    goto/16 :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_2
    .end sparse-switch
.end method
