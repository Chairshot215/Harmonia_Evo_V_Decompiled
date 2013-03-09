.class Lcom/google/android/talk/RosterListItem$BindHandler;
.super Ljava/lang/Object;
.source "RosterListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindHandler"
.end annotation


# instance fields
.field accountId:J

.field audioCapable:Z

.field callState:Lcom/google/android/talk/RosterListAdapter$CallState;

.field capabilities:I

.field clientType:I

.field contactType:I

.field private fastTrack:Z

.field invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

.field isGroupChat:Z

.field isGroupChatInvitation:Z

.field itemViewType:I

.field private narrow:Z

.field nickname:Ljava/lang/CharSequence;

.field presenceMode:I

.field private scrolling:Z

.field suppressIndent:Z

.field private suppressVideoButton:Z

.field tabletMode:Z

.field final synthetic this$0:Lcom/google/android/talk/RosterListItem;

.field videoCapable:Z


# direct methods
.method private constructor <init>(Lcom/google/android/talk/RosterListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/RosterListItem;Lcom/google/android/talk/RosterListItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;-><init>(Lcom/google/android/talk/RosterListItem;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/talk/RosterListItem$BindHandler;Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindLines(Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindPresence(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindVideoButton(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindShover(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/android/talk/RosterListItem$BindHandler;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->bindAvatar(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/talk/RosterListItem$BindHandler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListItem$BindHandler;->handleLayout(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/talk/RosterListItem$BindHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/android/talk/RosterListItem$BindHandler;->handleNarrow()V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/talk/RosterListItem$BindHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->suppressVideoButton:Z

    return v0
.end method

.method private bindAvatar(Landroid/database/Cursor;)V
    .locals 10
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 493
    iget-boolean v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->fastTrack:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->narrow:Z

    if-nez v6, :cond_1

    move v5, v2

    .line 495
    .local v5, quickContact:Z
    :goto_0
    if-nez v5, :cond_2

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mNoQuickBadge:Landroid/view/View;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$2900(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v0

    :goto_1
    check-cast v0, Landroid/widget/ImageView;

    .line 496
    .local v0, avatar:Landroid/widget/ImageView;
    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mNoQuickBadge:Landroid/view/View;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$2900(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v4

    :goto_2
    check-cast v4, Landroid/widget/ImageView;

    .line 498
    .local v4, hide:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    const/4 v3, 0x0

    .line 502
    .local v3, hasCustomAvatar:Z
    iget-boolean v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-eqz v6, :cond_4

    .line 503
    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/talk/TalkApp;->mGroupAvatar:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v6}, Lcom/google/android/talk/RosterListItem$BindHandler;->setAvatar(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 518
    :goto_3
    iget-boolean v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->scrolling:Z

    if-nez v6, :cond_0

    .line 519
    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #calls: Lcom/google/android/talk/RosterListItem;->clearColorFilter(Landroid/widget/ImageView;)V
    invoke-static {v6, v0}, Lcom/google/android/talk/RosterListItem;->access$3100(Lcom/google/android/talk/RosterListItem;Landroid/widget/ImageView;)V

    .line 520
    iget v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eqz v6, :cond_0

    .line 521
    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v8

    #calls: Lcom/google/android/talk/RosterListItem;->clearColorFilter(Landroid/widget/ImageView;)V
    invoke-static {v6, v8}, Lcom/google/android/talk/RosterListItem;->access$3100(Lcom/google/android/talk/RosterListItem;Landroid/widget/ImageView;)V

    .line 524
    :cond_0
    iget v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    if-eqz v6, :cond_7

    .line 525
    .local v2, contactOnline:Z
    :goto_4
    if-nez v2, :cond_8

    if-eqz v3, :cond_8

    .line 526
    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/talk/TalkApp;->getDesaturedColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 530
    :goto_5
    return-void

    .end local v0           #avatar:Landroid/widget/ImageView;
    .end local v2           #contactOnline:Z
    .end local v3           #hasCustomAvatar:Z
    .end local v4           #hide:Landroid/widget/ImageView;
    .end local v5           #quickContact:Z
    :cond_1
    move v5, v7

    .line 493
    goto :goto_0

    .line 495
    .restart local v5       #quickContact:Z
    :cond_2
    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mQuickBadge:Landroid/view/View;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$3000(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 496
    .restart local v0       #avatar:Landroid/widget/ImageView;
    :cond_3
    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mQuickBadge:Landroid/view/View;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$3000(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    .line 505
    .restart local v3       #hasCustomAvatar:Z
    .restart local v4       #hide:Landroid/widget/ImageView;
    :cond_4
    iget-wide v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->accountId:J

    iget-boolean v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->scrolling:Z

    invoke-direct {p0, p1, v8, v9, v6}, Lcom/google/android/talk/RosterListItem$BindHandler;->getAvatar(Landroid/database/Cursor;JZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 506
    .local v1, avatarDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_6

    .line 507
    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 512
    :goto_6
    if-eqz v5, :cond_5

    move-object v6, v0

    .line 513
    check-cast v6, Landroid/widget/QuickContactBadge;

    iget-object v8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 515
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/RosterListItem$BindHandler;->setAvatar(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 509
    :cond_6
    const/4 v3, 0x1

    goto :goto_6

    .end local v1           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_7
    move v2, v7

    .line 524
    goto :goto_4

    .line 528
    .restart local v2       #contactOnline:Z
    :cond_8
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_5
.end method

.method private bindLines(Lcom/google/android/talk/util/Markup;Landroid/database/Cursor;Z)V
    .locals 10
    .parameter "markup"
    .parameter "c"
    .parameter "alternate"

    .prologue
    const/16 v9, 0x22

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 340
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1Typeface:Landroid/graphics/Typeface;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$1700(Lcom/google/android/talk/RosterListItem;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 341
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mDefaultLine1TextColor:I
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$1800(Lcom/google/android/talk/RosterListItem;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mDefaultLine2TextColor:I
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$1900(Lcom/google/android/talk/RosterListItem;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-nez v3, :cond_2

    .line 344
    iget-boolean v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-eqz v3, :cond_1

    .line 345
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/RosterListItem;->access$800(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-virtual {v4}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/RosterListItem;->access$800(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, isSet:Z
    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eq v3, v8, :cond_3

    iget-boolean v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->tabletMode:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1100(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    :cond_3
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 357
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    :cond_4
    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-ne v3, v4, :cond_9

    move v3, v4

    :goto_1
    if-eq v3, p3, :cond_6

    .line 361
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLastUnreadMessageColumn:I
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2000(Lcom/google/android/talk/RosterListItem;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 363
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 364
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/talk/util/Markup;->markup(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const/4 v0, 0x1

    .line 370
    :cond_5
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1100(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 371
    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->clientType:I

    packed-switch v3, :pswitch_data_0

    .line 380
    .end local v1           #s:Ljava/lang/String;
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 381
    iget-boolean v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-eqz v3, :cond_a

    .line 382
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0c0039

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 383
    const/4 v0, 0x1

    .line 395
    :cond_7
    :goto_3
    if-nez v0, :cond_0

    .line 396
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, username:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/talk/TalkApp;->shouldHideRemoteJid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 398
    const-string v2, ""

    .line 400
    :cond_8
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v2           #username:Ljava/lang/String;
    :cond_9
    move v3, v5

    .line 360
    goto/16 :goto_1

    .line 374
    .restart local v1       #s:Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0c0101

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 384
    .end local v1           #s:Ljava/lang/String;
    :cond_a
    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_b

    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_b

    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    if-eq v3, v8, :cond_b

    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 388
    :cond_b
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mCustomStatusColumn:I
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2100(Lcom/google/android/talk/RosterListItem;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2Buffer:Landroid/database/CharArrayBuffer;
    invoke-static {v4}, Lcom/google/android/talk/RosterListItem;->access$2200(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 389
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2Buffer:Landroid/database/CharArrayBuffer;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2200(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;

    move-result-object v3

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-lez v3, :cond_7

    .line 390
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2Buffer:Landroid/database/CharArrayBuffer;
    invoke-static {v4}, Lcom/google/android/talk/RosterListItem;->access$2200(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;

    move-result-object v4

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2Buffer:Landroid/database/CharArrayBuffer;
    invoke-static {v6}, Lcom/google/android/talk/RosterListItem;->access$2200(Lcom/google/android/talk/RosterListItem;)Landroid/database/CharArrayBuffer;

    move-result-object v6

    iget v6, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/TextView;->setText([CII)V

    .line 391
    const/4 v0, 0x1

    goto :goto_3

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private bindPresence(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mPresenceView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$2600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    return-void
.end method

.method private bindShover(Z)V
    .locals 7
    .parameter "alternate"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, shove:Z
    iget-boolean v5, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->suppressIndent:Z

    if-eqz v5, :cond_2

    .line 465
    const/4 v2, 0x0

    .line 471
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 472
    if-nez v2, :cond_5

    move v2, v3

    .line 475
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mShover:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2700(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1200(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 479
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$800(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 481
    .local v1, normalDistanceFromAvatar:I
    if-nez v2, :cond_6

    .line 482
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mShoveDistance:I
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2800(Lcom/google/android/talk/RosterListItem;)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 487
    :goto_2
    return-void

    .line 466
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #normalDistanceFromAvatar:I
    :cond_2
    iget v5, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 467
    const/4 v2, 0x0

    goto :goto_0

    .line 468
    :cond_3
    iget v5, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eqz v5, :cond_0

    .line 469
    iget v5, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-eq v5, v3, :cond_4

    move v2, v3

    :goto_3
    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v4

    .line 472
    goto :goto_1

    .line 484
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #normalDistanceFromAvatar:I
    :cond_6
    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mShover:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2700(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method private bindVideoButton(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    const v6, 0x7f0200c8

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 410
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/talk/RosterListAdapter$CallState;->appliesToContact(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 413
    .local v0, showActiveAudioVideoPresence:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    const v4, 0x7f100078

    invoke-virtual {v3, v4}, Lcom/google/android/talk/RosterListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #setter for: Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/google/android/talk/RosterListItem;->access$1402(Lcom/google/android/talk/RosterListItem;Landroid/view/View;)Landroid/view/View;

    .line 414
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 420
    if-eqz v0, :cond_2

    .line 423
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    invoke-virtual {v3, v4}, Lcom/google/android/talk/TalkApp;->getAudioVideoButtonIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v2, v2, Lcom/google/android/talk/RosterListAdapter$CallState;->mIsVideo:Z

    if-eqz v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonClickedListener:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    :goto_1
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 452
    :goto_2
    return-void

    .end local v0           #showActiveAudioVideoPresence:Z
    :cond_0
    move v0, v1

    .line 410
    goto :goto_0

    .line 432
    .restart local v0       #showActiveAudioVideoPresence:Z
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02003f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 439
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mIsSelfItem:Z
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$2500(Lcom/google/android/talk/RosterListItem;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    invoke-static {v2}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$2300(Lcom/google/android/talk/RosterListItem;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    invoke-virtual {v3, v4}, Lcom/google/android/talk/TalkApp;->getAudioVideoButtonIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonClickedListener:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$2400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 446
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 448
    :cond_4
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private getAvatar(Landroid/database/Cursor;JZ)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "cursor"
    .parameter "accountId"
    .parameter "onlyLoadFromCache"

    .prologue
    const/4 v5, 0x0

    .line 534
    const/4 v1, 0x1

    invoke-static {p2, p3, v1}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v0

    .line 540
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    const-string v1, "avatars_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 541
    .local v3, avatarDataColumn:I
    if-eqz p4, :cond_0

    .line 542
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mAvatarHashColumn:I
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$3200(Lcom/google/android/talk/RosterListItem;)I

    move-result v2

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/talk/AvatarCache;->getAvatarIfInCache(Landroid/database/Cursor;IILjava/lang/String;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 549
    .local v7, avatar:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v7

    .line 546
    .end local v7           #avatar:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mAvatarHashColumn:I
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$3200(Lcom/google/android/talk/RosterListItem;)I

    move-result v2

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/AvatarCache;->getAvatar(Landroid/database/Cursor;IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7       #avatar:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private handleLayout(Z)V
    .locals 6
    .parameter "alternate"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 296
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-virtual {v2, v0, v0, v0, v0}, Lcom/google/android/talk/RosterListItem;->setPadding(IIII)V

    .line 297
    iget v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    if-eqz v2, :cond_0

    move v0, v1

    .line 298
    .local v0, contactOnline:Z
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/talk/RosterListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/RosterListItem$BindHandler;

    move-result-object v2

    iget v2, v2, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 300
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1100(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    invoke-virtual {v2, v3}, Lcom/google/android/talk/TalkApp;->getStatusColorId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1200(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1200(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1200(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/google/android/talk/RosterListItem;->access$800(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mTextWrapper:Landroid/view/View;
    invoke-static {v5}, Lcom/google/android/talk/RosterListItem;->access$1200(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 316
    return-void

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mBind:Lcom/google/android/talk/RosterListItem$BindHandler;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/RosterListItem$BindHandler;

    move-result-object v2

    iget v2, v2, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    if-ne v2, v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1100(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0200a0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 304
    :cond_2
    if-eqz v0, :cond_3

    .line 305
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1100(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/talk/RosterListItem;->access$1100(Lcom/google/android/talk/RosterListItem;)Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f02009e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private handleNarrow()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 319
    iget-boolean v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->narrow:Z

    if-eqz v2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonContainerView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$1300(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mSeparator:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$1400(Lcom/google/android/talk/RosterListItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1500(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mLine2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$1600(Lcom/google/android/talk/RosterListItem;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private setAvatar(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "i"
    .parameter "avatarDrawable"

    .prologue
    .line 553
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    return-void
.end method


# virtual methods
.method compute(Landroid/database/Cursor;Lcom/google/android/talk/RosterListAdapter$CallState;ZJZZZZZ)V
    .locals 4
    .parameter "c"
    .parameter "callState"
    .parameter "suppress"
    .parameter "acct"
    .parameter "tablet"
    .parameter "scrolling"
    .parameter "fastTrack"
    .parameter "narrow"
    .parameter "suppressVideoButton"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    iput-object p2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->callState:Lcom/google/android/talk/RosterListAdapter$CallState;

    .line 256
    iput-boolean p3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->suppressIndent:Z

    .line 257
    iput-boolean p10, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->suppressVideoButton:Z

    .line 259
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mUsernameColumn:I
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$200(Lcom/google/android/talk/RosterListItem;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/google/android/talk/RosterListItem;->access$102(Lcom/google/android/talk/RosterListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iput-boolean v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    .line 262
    iput-boolean v2, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChatInvitation:Z

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    .line 264
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mContactTypeColumn:I
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$300(Lcom/google/android/talk/RosterListItem;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->contactType:I

    .line 265
    iget v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->contactType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 266
    iput-boolean v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    .line 267
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$400(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/talk/TalkApp;->mGroupChatInvitations:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    .line 268
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->invitation:Lcom/google/android/gtalkservice/GroupChatInvitation;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChatInvitation:Z

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChatInvitation:Z

    #calls: Lcom/google/android/talk/RosterListItem;->internalGetItemViewType(Landroid/database/Cursor;Z)I
    invoke-static {p1, v0}, Lcom/google/android/talk/RosterListItem;->access$500(Landroid/database/Cursor;Z)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->itemViewType:I

    .line 272
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mNicknameColumn:I
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$600(Lcom/google/android/talk/RosterListItem;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/CharSequence;

    .line 273
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mCapabilitiesColumn:I
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$700(Lcom/google/android/talk/RosterListItem;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    .line 274
    iget v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->audioCapable:Z

    .line 275
    iget v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->capabilities:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->videoCapable:Z

    .line 276
    iput-boolean p6, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->tabletMode:Z

    .line 277
    iput-wide p4, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->accountId:J

    .line 278
    iput-boolean p9, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->narrow:Z

    .line 279
    iput-boolean p7, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->scrolling:Z

    .line 280
    iput-boolean p8, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->fastTrack:Z

    .line 282
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->isGroupChat:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$800(Lcom/google/android/talk/RosterListItem;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->nickname:Ljava/lang/CharSequence;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mPresenceStatusColumn:I
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$900(Lcom/google/android/talk/RosterListItem;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->presenceMode:I

    .line 288
    return-void

    :cond_2
    move v0, v2

    .line 268
    goto :goto_0

    :cond_3
    move v0, v2

    .line 274
    goto :goto_1

    :cond_4
    move v1, v2

    .line 275
    goto :goto_2

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$BindHandler;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mUsername:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$100(Lcom/google/android/talk/RosterListItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
