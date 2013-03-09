.class public Lcom/google/android/talk/InvitedUserList;
.super Landroid/app/ListActivity;
.source "InvitedUserList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/InvitedUserList$InvitedUserAdapter;
    }
.end annotation


# instance fields
.field private mAccountId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 86
    return-void
.end method

.method private query()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/talk/InvitedUserList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "account=%d AND %s=%d AND %s=%d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/google/android/talk/InvitedUserList;->mAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "subscriptionStatus"

    aput-object v5, v4, v10

    const/4 v5, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "subscriptionType"

    aput-object v7, v4, v5

    const/4 v5, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "nickname COLLATE UNICODE ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 74
    invoke-virtual {p0, v6}, Lcom/google/android/talk/InvitedUserList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 77
    :cond_0
    new-instance v0, Lcom/google/android/talk/InvitedUserList$InvitedUserAdapter;

    invoke-direct {v0, p0, p0, v6}, Lcom/google/android/talk/InvitedUserList$InvitedUserAdapter;-><init>(Lcom/google/android/talk/InvitedUserList;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/google/android/talk/InvitedUserList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f040044

    invoke-virtual {p0, v1}, Lcom/google/android/talk/InvitedUserList;->setContentView(I)V

    .line 51
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/google/android/talk/InvitedUserList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c002d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    const v1, 0x7f0c006b

    invoke-virtual {p0, v1}, Lcom/google/android/talk/InvitedUserList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/talk/InvitedUserList;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/talk/InvitedUserList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/talk/InvitedUserList;->mAccountId:J

    .line 59
    invoke-direct {p0}, Lcom/google/android/talk/InvitedUserList;->query()V

    .line 60
    return-void
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/google/android/talk/InvitedUserList;->query()V

    .line 84
    return-void
.end method
