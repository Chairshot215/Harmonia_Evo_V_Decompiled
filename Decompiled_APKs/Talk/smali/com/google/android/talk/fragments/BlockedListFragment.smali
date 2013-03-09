.class public Lcom/google/android/talk/fragments/BlockedListFragment;
.super Landroid/app/ListFragment;
.source "BlockedListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;,
        Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final SELECTED_NICKNAME_TAG:Ljava/lang/String; = "talk:selectedNickname"

.field private static final SELECTED_USERNAME_TAG:Ljava/lang/String; = "talk:selectedUsername"

.field private static final UNBLOCK_DIALOG:I = 0x1


# instance fields
.field private mAccountId:J

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mAvatarDataColumn:I

.field private mAvatarHashColumn:I

.field private mNicknameColumn:I

.field private mSelectedNickname:Ljava/lang/String;

.field private mSelectedUsername:Ljava/lang/String;

.field private mUnblockDialogFormatString:Ljava/lang/String;

.field private mUsernameColumn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedUsername:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedNickname:Ljava/lang/String;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/BlockedListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mUsernameColumn:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/BlockedListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mNicknameColumn:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/BlockedListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/BlockedListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mAvatarHashColumn:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/BlockedListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mAvatarDataColumn:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/BlockedListFragment;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/BlockedListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/BlockedListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mUnblockDialogFormatString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/BlockedListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedNickname:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 96
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, fragmentExtras:Landroid/os/Bundle;
    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mAccountId:J

    .line 81
    const v1, 0x7f0c0029

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/BlockedListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mUnblockDialogFormatString:Ljava/lang/String;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string v1, "talk:selectedUsername"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedUsername:Ljava/lang/String;

    .line 85
    const-string v1, "talk:selectedNickname"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedNickname:Ljava/lang/String;

    .line 87
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_BLOCKED_CONTACTS:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "nickname COLLATE UNICODE ASC"

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 102
    const v3, 0x7f040044

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, rootView:Landroid/view/View;
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    .local v0, emptyView:Landroid/widget/TextView;
    const v3, 0x7f0c002c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 107
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 108
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 110
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 111
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 113
    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 179
    const v1, 0x7f10001c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedUsername:Ljava/lang/String;

    .line 180
    const v1, 0x7f10001b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedNickname:Ljava/lang/String;

    .line 182
    new-instance v0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;-><init>(Lcom/google/android/talk/fragments/BlockedListFragment;I)V

    .line 183
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "unblock"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;

    .line 130
    .local v0, adapter:Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;

    .end local v0           #adapter:Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;-><init>(Lcom/google/android/talk/fragments/BlockedListFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 135
    .restart local v0       #adapter:Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;
    :goto_0
    const-string v1, "username"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mUsernameColumn:I

    .line 136
    const-string v1, "nickname"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mNicknameColumn:I

    .line 137
    const-string v1, "avatars_hash"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mAvatarHashColumn:I

    .line 138
    const-string v1, "avatars_data"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mAvatarDataColumn:I

    .line 140
    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BlockedListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    return-void

    .line 133
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/android/talk/fragments/BlockedListFragment$BlockedUserAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/talk/fragments/BlockedListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    const-string v0, "talk:selectedUsername"

    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedUsername:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "talk:selectedNickname"

    iget-object v1, p0, Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedNickname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
