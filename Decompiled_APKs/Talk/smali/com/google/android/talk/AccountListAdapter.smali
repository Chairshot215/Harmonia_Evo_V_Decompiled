.class public Lcom/google/android/talk/AccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/talk/TalkApp$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mCachedAvatars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsOnline:Z

.field private mPosition:I

.field private mPresenceClickListener:Landroid/view/View$OnClickListener;

.field private mPresenceStatus:I

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "resolver"
    .parameter "talkApp"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Lcom/google/android/talk/TalkApp;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const v0, 0x7f040001

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;

    .line 243
    new-instance v0, Lcom/google/android/talk/AccountListAdapter$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AccountListAdapter$3;-><init>(Lcom/google/android/talk/AccountListAdapter;)V

    iput-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceClickListener:Landroid/view/View$OnClickListener;

    .line 72
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object p3, p0, Lcom/google/android/talk/AccountListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    iput-object p4, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    .line 75
    iput-object p5, p0, Lcom/google/android/talk/AccountListAdapter;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AccountListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/talk/AccountListAdapter;->mIsOnline:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/AccountListAdapter;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/AccountListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/talk/AccountListAdapter;->mPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/AccountListAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AccountListAdapter;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/AccountListAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindAccountNameAndStatus(Landroid/view/View;II)V
    .locals 5
    .parameter "root"
    .parameter "line1Color"
    .parameter "line2Color"

    .prologue
    .line 173
    const v3, 0x7f10000c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 174
    .local v2, text:Landroid/widget/TextView;
    const v3, 0x7f10000f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, line2:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    if-lez v3, :cond_0

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    const v3, 0x7f100010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, spinner:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-boolean v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    if-eqz v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    const v4, 0x7f0c000a

    invoke-virtual {v3, v4}, Lcom/google/android/talk/TalkApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_1
    return-void

    .line 182
    .end local v1           #spinner:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    .restart local v1       #spinner:Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mStatus:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_2
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private bindAvatarView(Landroid/view/View;Z)V
    .locals 7
    .parameter "root"
    .parameter "isOffline"

    .prologue
    const/4 v6, 0x0

    .line 79
    const v2, 0x7f10000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .local v1, avatarView:Landroid/widget/ImageView;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v2, p0, Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 84
    .local v0, avatar:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/google/android/talk/AccountListAdapter;->mCachedAvatars:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v2, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;

    iget-object v3, p0, Lcom/google/android/talk/AccountListAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;-><init>(Lcom/google/android/talk/AccountListAdapter;Landroid/content/ContentResolver;Lcom/google/android/talk/TalkApp$AccountInfo;Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v4, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/google/android/talk/AccountListAdapter$RetrieveAccountAvatarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    if-eqz p2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v2}, Lcom/google/android/talk/TalkApp;->getDesaturedColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method private bindPresence(Landroid/view/View;)V
    .locals 12
    .parameter "root"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 106
    const v5, 0x7f10000e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 109
    .local v4, presenceView:Landroid/widget/ImageView;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/talk/AccountListAdapter;->mStatus:Ljava/lang/String;

    .line 110
    iput v7, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    .line 111
    iget v5, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/google/android/talk/AccountListAdapter;->mIsOnline:Z

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, capabilities:I
    iget-object v5, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v8, v5, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_0

    .line 115
    :try_start_0
    iget-object v5, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v8, v8, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-interface {v5, v8, v9}, Lcom/google/android/gtalkservice/IGTalkService;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v2

    .line 117
    .local v2, imSession:Lcom/google/android/gtalkservice/IImSession;
    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v3

    .line 119
    .local v3, presence:Lcom/google/android/gtalkservice/Presence;
    invoke-static {v3}, Lcom/google/android/talk/util/PresenceUtils;->translatePresence(Lcom/google/android/gtalkservice/Presence;)I

    move-result v5

    iput v5, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    .line 120
    iget v5, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    if-eqz v5, :cond_3

    :goto_1
    iput-boolean v6, p0, Lcom/google/android/talk/AccountListAdapter;->mIsOnline:Z

    .line 121
    invoke-virtual {v3}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v0

    .line 122
    invoke-virtual {v3}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/talk/AccountListAdapter;->mStatus:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v2           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v3           #presence:Lcom/google/android/gtalkservice/Presence;
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-boolean v5, v5, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    if-nez v5, :cond_1

    .line 130
    iget-object v5, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    iget v6, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    invoke-virtual {v5, v6, v7}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v5, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_1
    return-void

    .end local v0           #capabilities:I
    :cond_2
    move v5, v7

    .line 111
    goto :goto_0

    .restart local v0       #capabilities:I
    .restart local v2       #imSession:Lcom/google/android/gtalkservice/IImSession;
    .restart local v3       #presence:Lcom/google/android/gtalkservice/Presence;
    :cond_3
    move v6, v7

    .line 120
    goto :goto_1

    .line 124
    .end local v2           #imSession:Lcom/google/android/gtalkservice/IImSession;
    .end local v3           #presence:Lcom/google/android/gtalkservice/Presence;
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "talk"

    const-string v6, "RemoteException failure"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private bindSigninButton(Landroid/view/View;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, signInButton:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-boolean v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->loading:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-boolean v1, p0, Lcom/google/android/talk/AccountListAdapter;->mIsOnline:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0c0008

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 156
    new-instance v1, Lcom/google/android/talk/AccountListAdapter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/talk/AccountListAdapter$1;-><init>(Lcom/google/android/talk/AccountListAdapter;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 153
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 154
    :cond_2
    const v1, 0x7f0c0007

    goto :goto_2
.end method

.method private bindUnreadCount(Landroid/view/View;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 137
    const v1, 0x7f10000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    .local v0, unreadCountView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    if-lez v1, :cond_0

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "position"
    .parameter "messageCmd"

    .prologue
    .line 251
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 252
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 253
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 254
    iget-object v1, p0, Lcom/google/android/talk/AccountListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 255
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 205
    if-nez p2, :cond_0

    .line 206
    iget-object v4, p0, Lcom/google/android/talk/AccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040001

    invoke-virtual {v4, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 211
    .local v3, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/TalkApp$AccountInfo;

    iput-object v4, p0, Lcom/google/android/talk/AccountListAdapter;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 212
    iput p1, p0, Lcom/google/android/talk/AccountListAdapter;->mPosition:I

    .line 213
    invoke-direct {p0, v3}, Lcom/google/android/talk/AccountListAdapter;->bindPresence(Landroid/view/View;)V

    .line 214
    iget v4, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/google/android/talk/AccountListAdapter;->bindAvatarView(Landroid/view/View;Z)V

    .line 215
    invoke-direct {p0, v3}, Lcom/google/android/talk/AccountListAdapter;->bindUnreadCount(Landroid/view/View;)V

    .line 216
    invoke-direct {p0, v3}, Lcom/google/android/talk/AccountListAdapter;->bindSigninButton(Landroid/view/View;)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/talk/AccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    .local v0, r:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/google/android/talk/AccountListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    iget v5, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    invoke-virtual {v4, v5}, Lcom/google/android/talk/TalkApp;->getStatusColorId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 222
    iget v4, p0, Lcom/google/android/talk/AccountListAdapter;->mPresenceStatus:I

    if-nez v4, :cond_2

    .line 223
    const v1, 0x7f09002a

    .line 224
    .local v1, text1ColorId:I
    const v2, 0x7f09002b

    .line 229
    .local v2, text2ColorId:I
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/talk/AccountListAdapter;->bindAccountNameAndStatus(Landroid/view/View;II)V

    .line 233
    new-instance v4, Lcom/google/android/talk/AccountListAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/google/android/talk/AccountListAdapter$2;-><init>(Lcom/google/android/talk/AccountListAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-object v3

    .line 208
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #text1ColorId:I
    .end local v2           #text2ColorId:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    :cond_1
    move v4, v5

    .line 214
    goto :goto_1

    .line 226
    .restart local v0       #r:Landroid/content/res/Resources;
    :cond_2
    const v1, 0x106000b

    .line 227
    .restart local v1       #text1ColorId:I
    const v2, 0x106000b

    .restart local v2       #text2ColorId:I
    goto :goto_2
.end method
