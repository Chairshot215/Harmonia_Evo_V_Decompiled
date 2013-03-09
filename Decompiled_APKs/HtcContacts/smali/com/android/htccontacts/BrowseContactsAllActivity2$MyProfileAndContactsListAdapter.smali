.class public Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
.super Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyProfileAndContactsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;,
        Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;
    }
.end annotation


# instance fields
.field private final MSG_REFRESH_MY_CONTACT:I

.field private final VIEW_MATCHES:I

.field private final VIEW_REQUESTS:I

.field private mCSMatchesCount:I

.field private mCSMatchesRequestOffset:I

.field private mCSRequestsCount:I

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAvailableMyContact:Z

.field private mIsCSNotificationEnabled:Z

.field private mIsMyProfileEnabled:Z

.field private mIsSearchBarEnabled:Z

.field private mIsVoiceSearchEnabled:Z

.field private mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

.field private mMyProfileView:Landroid/view/View;

.field private mRefListActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/BaseListActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchBoxView:Landroid/view/View;

.field mWarningDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/htccontacts/app/BaseListActivity;Landroid/database/Cursor;Z)V
    .locals 3
    .parameter
    .parameter "listActivity"
    .parameter "cursor"
    .parameter "showMyProfile"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1936
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .line 1937
    const v0, 0x2090020

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1675
    iput-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mSearchBoxView:Landroid/view/View;

    .line 1676
    iput-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileView:Landroid/view/View;

    .line 1677
    iput-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    .line 1682
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    .line 1693
    iput v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->MSG_REFRESH_MY_CONTACT:I

    .line 1695
    new-instance v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$1;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mHandler:Landroid/os/Handler;

    .line 2270
    iput v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->VIEW_MATCHES:I

    .line 2271
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->VIEW_REQUESTS:I

    .line 1938
    invoke-virtual {p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1939
    iput-boolean p4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    .line 1940
    iput-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    .line 1941
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    .line 1946
    return-void
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1668
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsAvailableMyContact:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1668
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsAvailableMyContact:Z

    return p1
.end method

.method private getMatchesRequestsString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "viewType"
    .parameter "context"

    .prologue
    const/16 v2, 0x1e

    const/4 v3, 0x1

    .line 2273
    if-ne p1, v3, :cond_1

    .line 2274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2275
    .local v0, str:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesCount:I

    if-le v1, v3, :cond_0

    .line 2277
    const v1, 0x7f0a033a

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2292
    .end local v0           #str:Ljava/lang/StringBuilder;
    :goto_1
    return-object v1

    .line 2279
    .restart local v0       #str:Ljava/lang/StringBuilder;
    :cond_0
    const v1, 0x7f0a0339

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2282
    .end local v0           #str:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2284
    .restart local v0       #str:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSRequestsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSRequestsCount:I

    if-le v1, v3, :cond_2

    .line 2286
    const v1, 0x7f0a033c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2288
    :cond_2
    const v1, 0x7f0a033b

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2292
    .end local v0           #str:Ljava/lang/StringBuilder;
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method private getMyProfileView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "convertView"

    .prologue
    .line 2095
    const/4 v1, 0x0

    .line 2096
    .local v1, tag:Lcom/htc/widget/HtcListItemSeparableType;
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2097
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2098
    const/4 v2, 0x0

    .line 2108
    :goto_0
    return-object v2

    .line 2100
    :cond_0
    if-nez p1, :cond_1

    .line 2101
    new-instance p1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local p1
    const/16 v2, 0xc9

    invoke-direct {p1, v0, v2}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local p1
    move-object v2, p1

    .line 2102
    check-cast v2, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-direct {p0, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->initMyContactView(Lcom/android/htccontacts/widget/HtcListItemBuilder;)V

    .line 2105
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileView:Landroid/view/View;

    .line 2106
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->refreshMyContactCard(J)V

    :cond_1
    move-object v2, p1

    .line 2108
    goto :goto_0
.end method

.method private getSearchBarView(Landroid/view/View;)Landroid/view/View;
    .locals 17
    .parameter "convertView"

    .prologue
    .line 2112
    const/4 v11, 0x0

    .line 2113
    .local v11, tag:Lcom/htc/widget/HtcListItemSeparableType;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 2114
    .local v3, activity:Landroid/app/Activity;
    if-nez v3, :cond_0

    .line 2115
    const/4 v13, 0x0

    .line 2267
    :goto_0
    return-object v13

    .line 2117
    :cond_0
    if-nez p1, :cond_7

    .line 2118
    new-instance v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    const/16 v13, 0x258

    invoke-direct {v5, v3, v13}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 2119
    .local v5, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const v13, 0x7f020035

    invoke-virtual {v5, v13}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setBackgroundResource(I)V

    .line 2120
    const/16 v13, 0xd

    invoke-virtual {v5, v13}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 2121
    move-object/from16 p1, v5

    .line 2125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 2126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2134
    :cond_1
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getSearchBox()Lcom/android/htccontacts/widget/HtcListItemSearchBox;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/htccontacts/widget/HtcListItemSearchBox;->getSearchBoxWidget()Lcom/htc/widget/SearchBoxView;

    move-result-object v9

    .line 2135
    .local v9, searchBox:Lcom/htc/widget/SearchBoxView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v9}, Lcom/htc/widget/SearchBoxView;->getTextField()Landroid/widget/EditText;

    move-result-object v14

    #setter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13, v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3702(Lcom/android/htccontacts/BrowseContactsAllActivity2;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 2184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 2185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    const/16 v14, 0xb1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 2187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    new-instance v14, Lcom/android/htccontacts/BrowseContactsAllActivity2$SearachInputEditorFocusChangeListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcom/android/htccontacts/BrowseContactsAllActivity2$SearachInputEditorFocusChangeListener;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Lcom/android/htccontacts/BrowseContactsAllActivity2$1;)V

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2199
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 2200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    const v15, 0x7f0a0139

    invoke-virtual {v14, v15}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v12

    .line 2204
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$4900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 2205
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v6

    .line 2206
    .local v6, left:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v8

    .line 2207
    .local v8, right:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-static {v3}, Lcom/android/htccontacts/customize/CustomizeResource;->getEditTextBgResourceId(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v6, v12, v8, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 2211
    .end local v4           #bottom:I
    .end local v6           #left:I
    .end local v8           #right:I
    .end local v12           #top:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;

    move-result-object v13

    if-nez v13, :cond_4

    .line 2212
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->obtainTextWatcher()Landroid/text/TextWatcher;

    move-result-object v14

    #setter for: Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v13, v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5502(Lcom/android/htccontacts/BrowseContactsAllActivity2;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    .line 2214
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;

    move-result-object v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 2215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mEditTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$5800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/text/TextWatcher;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2218
    :cond_5
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v10

    .line 2219
    .local v10, searchButtonView:Landroid/widget/ImageView;
    if-eqz v10, :cond_6

    .line 2220
    invoke-static {v3}, Lcom/android/htccontacts/customize/CustomizeResource;->getCommonButtonSmallResourceId(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 2221
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2223
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2224
    .local v2, activities:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_c

    .line 2226
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2227
    const v13, 0x7f020006

    invoke-virtual {v10, v13}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 2228
    new-instance v13, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$5;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;)V

    invoke-virtual {v10, v13}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2238
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsVoiceSearchEnabled:Z

    .line 2245
    .end local v2           #activities:Ljava/util/List;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_6
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mSearchBoxView:Landroid/view/View;

    .line 2247
    .end local v5           #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .end local v9           #searchBox:Lcom/htc/widget/SearchBoxView;
    .end local v10           #searchButtonView:Landroid/widget/ImageView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mShouldRefocusSearch:Z
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mDropView:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/widget/HeaderBarDropDown;->isShown()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 2249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->requestFocus()Z

    .line 2252
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6300(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSelection(I)V

    .line 2258
    :cond_9
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isChina()Z

    move-result v13

    if-nez v13, :cond_a

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0x17

    if-eq v13, v14, :cond_a

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xd8

    if-eq v13, v14, :cond_a

    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xda

    if-ne v13, v14, :cond_b

    .line 2262
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFilterStringCache:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 2263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$6600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFilterStringCache:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    const/4 v14, 0x0

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2;->mFilterStringCache:Ljava/lang/String;
    invoke-static {v13, v14}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1802(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/String;)Ljava/lang/String;

    :cond_b
    move-object/from16 v13, p1

    .line 2267
    goto/16 :goto_0

    .line 2241
    .restart local v2       #activities:Ljava/util/List;
    .restart local v5       #builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #searchBox:Lcom/htc/widget/SearchBoxView;
    .restart local v10       #searchButtonView:Landroid/widget/ImageView;
    :cond_c
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 2242
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsVoiceSearchEnabled:Z

    goto/16 :goto_1
.end method

.method private initMyContactView(Lcom/android/htccontacts/widget/HtcListItemBuilder;)V
    .locals 9
    .parameter "myContactView"

    .prologue
    const/4 v8, 0x0

    .line 1895
    if-nez p1, :cond_1

    .line 1934
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v6}, Lcom/android/htccontacts/customize/CustomizeResource;->getListItemGreyBgResourceId(Landroid/content/Context;)I

    move-result v3

    .line 1899
    .local v3, id:I
    invoke-virtual {p1, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setBackgroundResource(I)V

    .line 1900
    const/16 v6, 0xd

    invoke-virtual {p1, v6}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 1901
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v5

    .line 1902
    .local v5, textWidget:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    .line 1903
    .local v1, badgeWidget:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-virtual {p1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v4

    .line 1904
    .local v4, imageWidget:Lcom/htc/widget/HtcListItemImageButton;
    const v6, 0x7f0a0024

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    .line 1905
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 1906
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_2

    .line 1907
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v8, v8, v6, v8}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPadding(IIII)V

    .line 1908
    :cond_2
    const v6, 0x7f0a0025

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(I)V

    .line 1909
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v6

    const v7, 0x2080846

    invoke-virtual {v6, v7}, Lcom/htc/widget/QuickContactBadge;->setImageResourceWithoutRelayout(I)V

    .line 1910
    const v6, 0x7f020003

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 1911
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v6}, Lcom/android/htccontacts/customize/CustomizeResource;->getCommonButtonSmallResourceId(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 1913
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/BaseListActivity;

    .line 1914
    .local v0, activity:Lcom/android/htccontacts/app/BaseListActivity;
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 1915
    new-instance v6, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;

    invoke-direct {v6, p0, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$3;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Lcom/android/htccontacts/app/BaseListActivity;)V

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListItemImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1949
    const/4 v0, 0x0

    return v0
.end method

.method protected bindName(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "cache"
    .parameter "accountType"

    .prologue
    const/4 v5, 0x0

    .line 2381
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    if-gez v3, :cond_0

    .line 2409
    :goto_0
    return-void

    .line 2384
    :cond_0
    iget v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->mIdxDisplayName:I

    iget-object v4, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v3, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 2385
    iget-object v3, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 2387
    .local v1, size:I
    if-eqz v1, :cond_3

    .line 2388
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v3, v3, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2389
    new-instance v2, Ljava/lang/String;

    iget-object v3, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget-object v3, v3, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v2, v3, v5, v1}, Ljava/lang/String;-><init>([CII)V

    .line 2390
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v4, v4, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->obtainMarkSearchKeyString(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2392
    .local v0, markedText:Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 2393
    move-object v0, v2

    .line 2395
    :cond_1
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2398
    .end local v0           #markedText:Ljava/lang/CharSequence;
    .end local v2           #text:Ljava/lang/String;
    :cond_2
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    iget-object v4, p4, Lcom/android/htccontacts/app/ContactsListActivity$ContactListItemCache;->primaryBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, v4, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText([CII)V

    goto :goto_0

    .line 2401
    :cond_3
    if-eqz p5, :cond_4

    const-string v3, "DeviceOnly"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2403
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    goto :goto_0

    .line 2406
    :cond_4
    iget-object v3, p4, Lcom/android/htccontacts/widget/BaseContactListItemCache;->mListItem2LineText:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const v4, 0x7f0a0022

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 2509
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2519
    return-void
.end method

.method public clearMessage()V
    .locals 2

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2422
    return-void
.end method

.method createShareMyContactInavailableDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"

    .prologue
    .line 1846
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1847
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a03a4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1848
    const v1, 0x7f0a03a5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1849
    const v1, 0x104000a

    new-instance v2, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$2;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1859
    const v1, 0x7f0a0161

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1860
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public focusSearchBoxIfExisted()V
    .locals 2

    .prologue
    .line 1864
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    if-ne v0, v1, :cond_1

    .line 1865
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$2800(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1867
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 1868
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$2900(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3000(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$3100(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1874
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2021
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getCount()I

    move-result v0

    .line 2022
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    if-ne v2, v1, :cond_0

    .line 2024
    add-int/lit8 v0, v0, 0x1

    .line 2026
    :cond_0
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v2, v1, :cond_1

    .line 2028
    add-int/lit8 v0, v0, 0x1

    .line 2032
    :cond_1
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/2addr v0, v1

    .line 2033
    return v0
.end method

.method public getFirstSelectableItem([I)Z
    .locals 4
    .parameter "selectablePosition"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1999
    array-length v3, p1

    if-ge v3, v2, :cond_0

    .line 2000
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "int[] size must greater or equal than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2002
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getFirstSelectableItem([I)Z

    move-result v0

    .line 2003
    .local v0, hasSelectable:Z
    iget-boolean v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v2, v3, :cond_1

    .line 2006
    iget v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v3, v3, 0x0

    aput v3, p1, v1

    .line 2008
    :cond_1
    aget v3, p1, v1

    if-gez v3, :cond_2

    .line 2017
    :goto_0
    return v1

    .line 2013
    :cond_2
    iget-boolean v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    if-ne v2, v3, :cond_3

    .line 2015
    aget v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, p1, v1

    :cond_3
    move v1, v2

    .line 2017
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 2457
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    if-ne v1, v0, :cond_5

    .line 2458
    if-nez p1, :cond_0

    .line 2459
    new-instance v0, Ljava/lang/String;

    const-string v1, "SearchBar"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2503
    :goto_0
    return-object v0

    .line 2462
    :cond_0
    if-gt v1, p1, :cond_2

    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_2

    .line 2463
    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesCount:I

    if-lez v0, :cond_1

    .line 2464
    new-instance v0, Ljava/lang/String;

    const-string v1, "CSMatches"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2466
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "CSRequests"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2470
    :cond_2
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v1, v0, :cond_4

    .line 2472
    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_3

    .line 2473
    new-instance v0, Ljava/lang/String;

    const-string v1, "MyProfile"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2476
    :cond_3
    add-int/lit8 v0, p1, -0x2

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2481
    :cond_4
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2485
    :cond_5
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v0, v0, 0x0

    if-ge p1, v0, :cond_7

    .line 2486
    if-nez p1, :cond_6

    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesCount:I

    if-lez v0, :cond_6

    .line 2487
    new-instance v0, Ljava/lang/String;

    const-string v1, "CSMatches"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2489
    :cond_6
    new-instance v0, Ljava/lang/String;

    const-string v1, "CSRequests"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2492
    :cond_7
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v1, v0, :cond_9

    .line 2494
    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v0, v0, 0x0

    if-ne v0, p1, :cond_8

    .line 2495
    new-instance v0, Ljava/lang/String;

    const-string v1, "MyProfile"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2498
    :cond_8
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2503
    :cond_9
    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2042
    const/4 v0, 0x1

    .line 2044
    .local v0, mCSTypeOffset:I
    iget-boolean v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    if-ne v2, v3, :cond_5

    .line 2045
    if-nez p1, :cond_1

    .line 2046
    const/4 v1, 0x0

    .line 2089
    :cond_0
    :goto_0
    return v1

    .line 2050
    :cond_1
    if-gt v2, p1, :cond_2

    iget v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v3, :cond_0

    .line 2054
    :cond_2
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v2, v1, :cond_4

    .line 2056
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_3

    move v1, v2

    .line 2057
    goto :goto_0

    .line 2060
    :cond_3
    add-int/lit8 v1, p1, -0x2

    iget v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v1, v2

    invoke-super {p0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItemViewType(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2066
    :cond_4
    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v1, v2

    invoke-super {p0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItemViewType(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2071
    :cond_5
    if-ltz p1, :cond_6

    iget v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v3, v3, 0x0

    if-lt p1, v3, :cond_0

    .line 2076
    :cond_6
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v2, v1, :cond_8

    .line 2078
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v1, v1, 0x0

    if-ne v1, p1, :cond_7

    move v1, v2

    .line 2079
    goto :goto_0

    .line 2083
    :cond_7
    add-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v1, v2

    invoke-super {p0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItemViewType(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2089
    :cond_8
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int v1, p1, v1

    invoke-super {p0, v1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getItemViewType(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getMatchesRequestView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "viewType"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2296
    const/4 v2, 0x0

    .line 2297
    .local v2, tag:Lcom/htc/widget/HtcListItemSeparableType;
    iget-object v4, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2298
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2299
    const/4 v4, 0x0

    .line 2317
    :goto_0
    return-object v4

    .line 2302
    :cond_0
    if-nez p3, :cond_1

    .line 2303
    new-instance p3, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local p3
    const/16 v4, 0x64

    invoke-direct {p3, v0, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .restart local p3
    :cond_1
    move-object v1, p3

    .line 2306
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 2307
    .local v1, item:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setRoundCorner(I)V

    .line 2309
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v3

    .line 2310
    .local v3, textWidget:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 2311
    const v4, 0x7f0a033d

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    .line 2315
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getMatchesRequestsString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    move-object v4, p3

    .line 2317
    goto :goto_0

    .line 2313
    :cond_2
    const v4, 0x7f0a033e

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    goto :goto_1
.end method

.method public getMyContactContactId()J
    .locals 2

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    iget-wide v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mMyContactId:J

    .line 1881
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "section"

    .prologue
    const/4 v2, 0x1

    .line 2552
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getPositionForSection(I)I

    move-result v0

    .line 2553
    .local v0, position:I
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    if-ne v2, v1, :cond_1

    .line 2554
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v2, v1, :cond_0

    .line 2555
    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/2addr v1, v2

    .line 2566
    :goto_0
    return v1

    .line 2558
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 2562
    :cond_1
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v2, v1, :cond_2

    .line 2563
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 2566
    :cond_2
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getProfileLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mMyProfileAsyncQuery:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mProfileLookupUri:Landroid/net/Uri;

    .line 1890
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2522
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 2536
    .local v0, originalSections:[Ljava/lang/Object;
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2321
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    if-ne v1, v0, :cond_5

    .line 2322
    if-nez p1, :cond_0

    .line 2323
    invoke-direct {p0, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getSearchBarView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2372
    :goto_0
    return-object v0

    .line 2327
    :cond_0
    if-gt v1, p1, :cond_2

    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_2

    .line 2328
    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesCount:I

    if-lez v0, :cond_1

    .line 2329
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getMatchesRequestView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2332
    :cond_1
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getMatchesRequestView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2336
    :cond_2
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v1, v0, :cond_4

    .line 2338
    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_3

    .line 2339
    invoke-direct {p0, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getMyProfileView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2342
    :cond_3
    add-int/lit8 v0, p1, -0x2

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2347
    :cond_4
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2352
    :cond_5
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v0, v0, 0x0

    if-ge p1, v0, :cond_7

    .line 2353
    if-nez p1, :cond_6

    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesCount:I

    if-lez v0, :cond_6

    .line 2354
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getMatchesRequestView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2357
    :cond_6
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getMatchesRequestView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2361
    :cond_7
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v1, v0, :cond_9

    .line 2363
    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v0, v0, 0x0

    if-ne v0, p1, :cond_8

    .line 2364
    invoke-direct {p0, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->getMyProfileView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2367
    :cond_8
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2372
    :cond_9
    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int v0, p1, v0

    invoke-super {p0, v0, p2, p3}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2038
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 1953
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    if-ne v0, v1, :cond_4

    .line 1954
    if-nez p1, :cond_1

    .line 1955
    const/4 v0, 0x0

    .line 1989
    :cond_0
    :goto_0
    return v0

    .line 1958
    :cond_1
    if-gt v0, p1, :cond_2

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v1, v1, 0x1

    if-lt p1, v1, :cond_0

    .line 1962
    :cond_2
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v0, v1, :cond_3

    .line 1963
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p1, :cond_0

    .line 1966
    add-int/lit8 v0, p1, -0x2

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 1971
    :cond_3
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 1975
    :cond_4
    if-ltz p1, :cond_5

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v1, v1, 0x0

    if-lt p1, v1, :cond_0

    .line 1979
    :cond_5
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    if-ne v0, v1, :cond_6

    .line 1981
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    add-int/lit8 v1, v1, 0x0

    if-eq v1, p1, :cond_0

    .line 1984
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 1989
    :cond_6
    iget v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mCSMatchesRequestOffset:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshMyContactCard()V
    .locals 2

    .prologue
    .line 2412
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->refreshMyContactCard(J)V

    .line 2413
    return-void
.end method

.method public refreshMyContactCard(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 2416
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2417
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2418
    return-void
.end method

.method public setMyProfileEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2439
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    .line 2440
    .local v0, wasMyProfileEnabled:Z
    if-ne p1, v0, :cond_0

    .line 2445
    :goto_0
    return-void

    .line 2443
    :cond_0
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsMyProfileEnabled:Z

    .line 2444
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setSearchBarEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2448
    iget-boolean v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    .line 2449
    .local v0, wasSearchBarEnabled:Z
    if-ne p1, v0, :cond_0

    .line 2454
    :goto_0
    return-void

    .line 2452
    :cond_0
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsSearchBarEnabled:Z

    .line 2453
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setVoiceSearchEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2425
    iget-boolean v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsVoiceSearchEnabled:Z

    if-ne v1, p1, :cond_1

    .line 2436
    :cond_0
    :goto_0
    return-void

    .line 2428
    :cond_1
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoiceSearchEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mSearchBoxView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2430
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mSearchBoxView:Landroid/view/View;

    const v2, 0x7f0700e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2431
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2432
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2433
    iput-boolean p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsVoiceSearchEnabled:Z

    goto :goto_0
.end method
