.class Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerActiveChats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;
    }
.end annotation


# instance fields
.field private mChatsMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/talk/ChatView;",
            ">;"
        }
    .end annotation
.end field

.field mOnDone:Ljava/lang/Runnable;

.field private mPageAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter
    .parameter "root"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;

    .line 212
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    .line 308
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 147
    const v0, 0x7f10003d

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 148
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 151
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Lcom/google/android/talk/util/ChatList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public foreachChatView(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
    .locals 3
    .parameter "vr"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView;

    .line 162
    .local v0, cv:Lcom/google/android/talk/ChatView;
    invoke-interface {p1, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;->run(Landroid/view/View;)Z

    goto :goto_0

    .line 164
    .end local v0           #cv:Lcom/google/android/talk/ChatView;
    :cond_0
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public getSelectedChatView()Lcom/google/android/talk/ChatView;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 194
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/talk/util/ChatList;->moveToPosition(I)V

    .line 188
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    invoke-virtual {v4}, Lcom/google/android/talk/util/ChatList;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, username:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mChatsMapping:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/ChatView;

    .line 190
    .local v0, cv:Lcom/google/android/talk/ChatView;
    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0           #cv:Lcom/google/android/talk/ChatView;
    :cond_2
    move-object v0, v3

    .line 194
    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->stop()V

    .line 202
    :cond_0
    return-void
.end method

.method public selectNext(ZLjava/lang/Runnable;)V
    .locals 3
    .parameter "moveForward"
    .parameter "onDone"

    .prologue
    .line 208
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mOnDone:Ljava/lang/Runnable;

    .line 209
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->getSelectedItemPosition()I

    move-result v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 210
    return-void

    .line 209
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V
    .locals 4
    .parameter "ga"

    .prologue
    const/4 v3, 0x0

    .line 401
    if-nez p1, :cond_1

    .line 402
    iput-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    .line 403
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 404
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 421
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 422
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 425
    :cond_0
    return-void

    .line 406
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    iget-object v2, p1, Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;->mChatList:Lcom/google/android/talk/util/ChatList;

    iput-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPagerChatList:Lcom/google/android/talk/util/ChatList;

    .line 407
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 408
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 409
    .local v1, viewPagerAdapter:Landroid/support/v4/view/PagerAdapter;
    if-eqz v1, :cond_2

    .line 413
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "newPos"

    .prologue
    .line 429
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 430
    .local v0, curPos:I
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 435
    if-ne v0, p1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->onPageSelected(I)V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats;->mPageListener:Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ViewPagerActiveChats$LocalOnPageChangeListener;->onScrollingSettled(I)V

    .line 443
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
