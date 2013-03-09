.class Lcom/google/android/talk/ChatView$ChatListener;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChatListener"
.end annotation


# instance fields
.field volatile mChatView:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter "chatView"

    .prologue
    .line 2830
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 2831
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2832
    return-void
.end method

.method private simpleRequery()V
    .locals 1

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2969
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2973
    :goto_0
    return-void

    .line 2972
    :cond_0
    #calls: Lcom/google/android/talk/ChatView;->requeryForChatHistory()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3800(Lcom/google/android/talk/ChatView;)V

    goto :goto_0
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 3006
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$ChatListener;->simpleRequery()V

    .line 3007
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 2887
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 2891
    return-void
.end method

.method public clearRefs()V
    .locals 1

    .prologue
    .line 2835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2836
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2866
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2883
    :goto_0
    return-void

    .line 2869
    :cond_0
    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ChatListener$2;

    invoke-direct {v2, p0, p2}, Lcom/google/android/talk/ChatView$ChatListener$2;-><init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 3000
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$ChatListener;->simpleRequery()V

    .line 3001
    return-void
.end method

.method public newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "from"
    .parameter "body"
    .parameter "notify"

    .prologue
    const/4 v7, 0x1

    .line 2938
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2939
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_1

    .line 2965
    :cond_0
    :goto_0
    return-void

    .line 2942
    :cond_1
    #setter for: Lcom/google/android/talk/ChatView;->mJid:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/talk/ChatView;->access$6702(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 2943
    #setter for: Lcom/google/android/talk/ChatView;->mMayHaveUnreadChat:Z
    invoke-static {v0, v7}, Lcom/google/android/talk/ChatView;->access$6802(Lcom/google/android/talk/ChatView;Z)Z

    .line 2946
    #calls: Lcom/google/android/talk/ChatView;->requeryForChatHistory()V
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3800(Lcom/google/android/talk/ChatView;)V

    .line 2948
    #getter for: Lcom/google/android/talk/ChatView;->mFocused:Z
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6900(Lcom/google/android/talk/ChatView;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 2949
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v4

    #getter for: Lcom/google/android/talk/ChatView;->mAccountId:J
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$7000(Lcom/google/android/talk/ChatView;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v3

    .line 2951
    .local v3, settingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    const-string v4, "off"

    invoke-virtual {v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2953
    const-string v4, "notification setting is off"

    #calls: Lcom/google/android/talk/ChatView;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    goto :goto_0

    .line 2958
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextRingtoneURI()Ljava/lang/String;

    move-result-object v2

    .line 2959
    .local v2, ringtoneUrl:Ljava/lang/String;
    new-instance v1, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;-><init>(Landroid/content/Context;)V

    .line 2961
    .local v1, ringer:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 2962
    invoke-virtual {v1, v7}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->setLowVolume(Z)V

    .line 2963
    invoke-virtual {v1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->ring()V

    goto :goto_0
.end method

.method public newMessageSent(Ljava/lang/String;)V
    .locals 6
    .parameter "body"

    .prologue
    .line 2978
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2979
    .local v1, cv:Lcom/google/android/talk/ChatView;
    if-nez v1, :cond_1

    .line 2995
    :cond_0
    :goto_0
    return-void

    .line 2982
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$ChatListener;->simpleRequery()V

    .line 2984
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2986
    .local v0, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2987
    const/16 v4, 0x40

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2989
    .local v2, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2991
    .local v3, msg:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2992
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2993
    invoke-virtual {v1, v2}, Lcom/google/android/talk/ChatView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2897
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2912
    :goto_0
    return-void

    .line 2900
    :cond_0
    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ChatListener$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/talk/ChatView$ChatListener$3;-><init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2918
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2933
    :goto_0
    return-void

    .line 2921
    :cond_0
    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ChatListener$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/talk/ChatView$ChatListener$4;-><init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public useLightweightNotify()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3012
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 3013
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_1

    .line 3016
    :cond_0
    :goto_0
    return v1

    :cond_1
    #getter for: Lcom/google/android/talk/ChatView;->mFocused:Z
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6900(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Lcom/google/android/talk/ChatView;->mPaused:Z
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$7100(Lcom/google/android/talk/ChatView;)Z

    move-result v2

    if-nez v2, :cond_0

    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2845
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-nez v0, :cond_0

    .line 2857
    :goto_0
    return-void

    .line 2848
    :cond_0
    #getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ChatListener$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/talk/ChatView$ChatListener$1;-><init>(Lcom/google/android/talk/ChatView$ChatListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
