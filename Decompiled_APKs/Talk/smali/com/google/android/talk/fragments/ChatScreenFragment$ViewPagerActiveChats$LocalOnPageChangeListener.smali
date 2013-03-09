.class Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalOnPageChangeListener"
.end annotation


# instance fields
.field mCurrentPosition:I

.field mNextPosition:I

.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)V

    return-void
.end method

.method private setPosition(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    .line 232
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 233
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 234
    .local v3, selectedIntent:Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 242
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const-string v5, "from"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mTargetContact:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$402(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->getSelectedChatView()Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 251
    .local v0, cv:Lcom/google/android/talk/ChatView;
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->access$500(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/ChatView;

    .line 252
    .local v2, other:Lcom/google/android/talk/ChatView;
    if-eq v2, v0, :cond_2

    .line 253
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->unfocus()V

    goto :goto_1

    .line 257
    .end local v2           #other:Lcom/google/android/talk/ChatView;
    :cond_3
    if-eqz v0, :cond_6

    .line 260
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getSession()Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v4

    if-nez v4, :cond_4

    .line 261
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getAccountId()J

    move-result-wide v6

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$600(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;

    .line 263
    :cond_4
    invoke-virtual {v0, v8}, Lcom/google/android/talk/ChatView;->initSession(Z)Z

    .line 265
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z
    invoke-static {v4}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$700(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 266
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/talk/ChatView;->setStartVoiceChatOnFirstDisplay(Z)V

    .line 267
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mStartVoiceChatRequest:Z
    invoke-static {v4, v8}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$702(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 270
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->focus()V

    .line 273
    :cond_6
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mOnDone:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 274
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v4, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mOnDone:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 275
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mOnDone:Ljava/lang/Runnable;

    goto/16 :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    iget v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->mNextPosition:I

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->onScrollingSettled(I)V

    .line 305
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 290
    move v0, p2

    .line 291
    .local v0, positionOffsetWas:F
    iget v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 292
    const/high16 v1, 0x3f80

    sub-float/2addr p2, v1

    .line 295
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    #getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mSwitchHintParent:Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$800(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment$HintHolder;->setPercentRevealed(F)V

    .line 298
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 281
    iput p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->mNextPosition:I

    .line 282
    iget v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->mNextPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->setPosition(I)V

    .line 283
    return-void
.end method

.method public onScrollingSettled(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 225
    iget v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->mNextPosition:I

    iput v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->mCurrentPosition:I

    .line 226
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;

    iget-object v0, v0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    const/4 v1, 0x0

    #calls: Lcom/google/android/talk/fragments/ChatScreenFragment;->updateHintText(F)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$100(Lcom/google/android/talk/fragments/ChatScreenFragment;F)V

    .line 227
    return-void
.end method
