.class final Lcom/google/android/talk/InvitedUserList$InvitedUserAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "InvitedUserList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/InvitedUserList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvitedUserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/InvitedUserList;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/InvitedUserList;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/talk/InvitedUserList$InvitedUserAdapter;->this$0:Lcom/google/android/talk/InvitedUserList;

    .line 88
    const v0, 0x7f040024

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 89
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 93
    const v4, 0x7f10001c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .local v1, name:Landroid/widget/TextView;
    const v4, 0x7f10001b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, nickname:Landroid/widget/TextView;
    const-string v4, "username"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, username:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const-string v4, "nickname"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v4, 0x7f10000a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    .line 102
    .local v0, i:Landroid/widget/QuickContactBadge;
    iget-object v4, p0, Lcom/google/android/talk/InvitedUserList$InvitedUserAdapter;->this$0:Lcom/google/android/talk/InvitedUserList;

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method
