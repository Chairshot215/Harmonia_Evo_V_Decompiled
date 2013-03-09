.class Lcom/google/android/talk/BuddyListCombo$8;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/fragments/BuddyListFragment$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddToContacts(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1385
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->addToContacts(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/BuddyListCombo;->access$1800(Lcom/google/android/talk/BuddyListCombo;Ljava/lang/String;)V

    .line 1386
    return-void
.end method

.method public onCloseAllChats()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mTabletMode:Z
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1700(Lcom/google/android/talk/BuddyListCombo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    #calls: Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$1400(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->resetToBaseIntent()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1100(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1380
    return-void
.end method

.method public onDisplayProgress(Z)V
    .locals 3
    .parameter "display"

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Lcom/google/android/talk/BuddyListCombo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1304
    .local v0, pb:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1305
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    :cond_0
    return-void

    .line 1305
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onInviteFriend(J)V
    .locals 3
    .parameter

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1361
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1600(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1364
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v2, Lcom/google/android/talk/AddBuddyScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1365
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1366
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1367
    return-void
.end method

.method public onLeaveChat(JLjava/lang/String;)V
    .locals 1
    .parameter "account"
    .parameter "username"

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1392
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->leaveChat(Ljava/lang/String;)V

    .line 1395
    :cond_0
    return-void
.end method

.method public onLogout()V
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 1372
    return-void
.end method

.method public onMakeInvite(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 1338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_MANAGE_SUBSCRIPTION"

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1340
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v2, Lcom/google/android/talk/SubscriptionScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1341
    const-string v1, "from"

    iget-object v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1344
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1345
    return-void
.end method

.method public onOpenChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1284
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V
    invoke-static {v2}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1285
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V
    invoke-static {v2}, Lcom/google/android/talk/BuddyListCombo;->access$1600(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1287
    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    iget-object v4, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1289
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1291
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "from"

    iget-object v3, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1292
    const-string v2, "accountId"

    iget-wide v3, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1293
    iget-boolean v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mOpenAudioChat:Z

    if-eqz v2, :cond_0

    .line 1294
    const-string v2, "vc"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1297
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v3, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    #calls: Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V
    invoke-static {v2, v3}, Lcom/google/android/talk/BuddyListCombo;->access$1400(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1298
    iget-object v2, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v2, v2, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 1299
    return-void
.end method

.method public onOpenGroupChat(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1311
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1312
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1600(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1314
    iget-wide v0, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mContactId:J

    invoke-static {v0, v1}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v1

    .line 1315
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$500(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    .line 1317
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1319
    const-string v1, "from"

    iget-object v3, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    const-string v1, "accountId"

    iget-wide v3, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1321
    const-string v1, "is_muc"

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1322
    if-eqz v0, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v3, Lcom/google/android/talk/GroupChatApproval;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1324
    const-string v1, "muc_inviter"

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1326
    const-string v1, "muc_password"

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    const-string v1, "room"

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0, v2, v5}, Lcom/google/android/talk/BuddyListCombo;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1334
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    #calls: Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$1400(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1333
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRequestSetSelfStatus(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1350
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->onCancelSearch()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1600(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1352
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    #calls: Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$1400(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    .line 1353
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFocus(Landroid/content/Intent;)V

    .line 1356
    :cond_0
    return-void
.end method

.method public onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1400
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/BuddyListCombo;->access$100(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V

    .line 1401
    return-void
.end method

.method public onShowInvites(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->gotoDefaultExpandoState()V
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$1500(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1406
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1407
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    const-class v2, Lcom/google/android/talk/InvitedUserList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1408
    const-string v1, "accountId"

    iget-wide v2, p1, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1409
    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/BuddyListCombo;->startActivity(Landroid/content/Intent;)V

    .line 1410
    return-void
.end method

.method public onVideoChatStarted()Z
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$8;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyListCombo;->startVideoChatAnimation()Z

    move-result v0

    return v0
.end method
