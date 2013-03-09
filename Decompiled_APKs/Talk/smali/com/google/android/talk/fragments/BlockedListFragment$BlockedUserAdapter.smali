.class final Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BlockedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BlockedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlockedUserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BlockedListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BlockedListFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    .line 148
    const v0, 0x7f04000b

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 153
    const v1, 0x7f10001c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 154
    .local v8, name:Landroid/widget/TextView;
    const v1, 0x7f10001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 155
    .local v9, nickname:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    #getter for: Lcom/google/android/talk/fragments/BlockedListFragment;->mUsernameColumn:I
    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$000(Lcom/google/android/talk/fragments/BlockedListFragment;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, username:Ljava/lang/String;
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    #getter for: Lcom/google/android/talk/fragments/BlockedListFragment;->mNicknameColumn:I
    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$100(Lcom/google/android/talk/fragments/BlockedListFragment;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v1, 0x7f10001a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 162
    .local v7, i:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    #getter for: Lcom/google/android/talk/fragments/BlockedListFragment;->mAccountId:J
    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$200(Lcom/google/android/talk/fragments/BlockedListFragment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v0

    .line 163
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    #getter for: Lcom/google/android/talk/fragments/BlockedListFragment;->mAvatarHashColumn:I
    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$300(Lcom/google/android/talk/fragments/BlockedListFragment;)I

    move-result v2

    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    #getter for: Lcom/google/android/talk/fragments/BlockedListFragment;->mAvatarDataColumn:I
    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$400(Lcom/google/android/talk/fragments/BlockedListFragment;)I

    move-result v3

    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    #getter for: Lcom/google/android/talk/fragments/BlockedListFragment;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$500(Lcom/google/android/talk/fragments/BlockedListFragment;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/AvatarCache;->getAvatar(Landroid/database/Cursor;IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 167
    .local v6, avatar:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    return-void
.end method
