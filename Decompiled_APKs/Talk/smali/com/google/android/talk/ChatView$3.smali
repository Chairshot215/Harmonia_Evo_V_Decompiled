.class Lcom/google/android/talk/ChatView$3;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallbackErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Lcom/google/android/talk/util/ChatList;Landroid/os/Bundle;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoadFailed(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 3
    .parameter "contact"
    .parameter "c"

    .prologue
    .line 542
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactInfoLoadFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$702(Lcom/google/android/talk/ChatView;Z)Z

    .line 545
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #setter for: Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/talk/ChatView;->access$802(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v1, 0x2

    #setter for: Lcom/google/android/talk/ChatView;->mPresenceStatus:I
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$902(Lcom/google/android/talk/ChatView;I)I

    .line 547
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/android/talk/ChatView;->mChatsTableContactId:J
    invoke-static {v0, v1, v2}, Lcom/google/android/talk/ChatView;->access$1102(Lcom/google/android/talk/ChatView;J)J

    .line 548
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/talk/ChatView;->mCapabilities:I
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$1202(Lcom/google/android/talk/ChatView;I)I

    .line 550
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->updateWarningView()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1300(Lcom/google/android/talk/ChatView;)V

    .line 551
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 552
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->initializeMessageBarState()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1400(Lcom/google/android/talk/ChatView;)V

    .line 554
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$2002(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 555
    return-void
.end method

.method public onContactInfoLoaded()V
    .locals 8

    .prologue
    const/16 v1, 0x14

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #setter for: Lcom/google/android/talk/ChatView;->mContactInfoLoaded:Z
    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$702(Lcom/google/android/talk/ChatView;Z)Z

    .line 504
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getNickName()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/google/android/talk/ChatView;->mNickName:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$802(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getPresenceStatus()I

    move-result v4

    #setter for: Lcom/google/android/talk/ChatView;->mPresenceStatus:I
    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$902(Lcom/google/android/talk/ChatView;I)I

    .line 506
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getCustomPresence()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/google/android/talk/ChatView;->mCustomStatus:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$1002(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getContactId()J

    move-result-wide v4

    #setter for: Lcom/google/android/talk/ChatView;->mChatsTableContactId:J
    invoke-static {v0, v4, v5}, Lcom/google/android/talk/ChatView;->access$1102(Lcom/google/android/talk/ChatView;J)J

    .line 508
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getCapabilities()I

    move-result v4

    #setter for: Lcom/google/android/talk/ChatView;->mCapabilities:I
    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$1202(Lcom/google/android/talk/ChatView;I)I

    .line 510
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->updateWarningView()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1300(Lcom/google/android/talk/ChatView;)V

    .line 511
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 512
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->initializeMessageBarState()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1400(Lcom/google/android/talk/ChatView;)V

    .line 514
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1500(Lcom/google/android/talk/ChatView;)Lcom/google/android/videochat/CallStateClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mCallStateClient:Lcom/google/android/videochat/CallStateClient;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1500(Lcom/google/android/talk/ChatView;)Lcom/google/android/videochat/CallStateClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/CallStateClient;->requestUpdate()V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContactId:J
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1600(Lcom/google/android/talk/ChatView;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 519
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContact:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 520
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1800(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$QueryHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$QueryHandler;->cancelOperation(I)V

    .line 521
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mQueryHandler:Lcom/google/android/talk/ChatView$QueryHandler;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1800(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$QueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/google/android/talk/ChatView;->access$1900()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/talk/ChatView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Lcom/google/android/talk/ChatView;->mSingleAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$2002(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 532
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mQueryCompleteLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2100(Lcom/google/android/talk/ChatView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/talk/ChatView;->mContactQueryComplete:Z
    invoke-static {v0, v2}, Lcom/google/android/talk/ChatView;->access$2202(Lcom/google/android/talk/ChatView;Z)Z

    .line 536
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    #calls: Lcom/google/android/talk/ChatView;->insertBuddyStatus()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2300(Lcom/google/android/talk/ChatView;)V

    .line 537
    monitor-exit v1

    .line 538
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
