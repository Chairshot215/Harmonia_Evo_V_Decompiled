.class public Lcom/android/htccontacts/util/SelectVisibleContactAccounts;
.super Ljava/lang/Object;
.source "SelectVisibleContactAccounts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/SelectVisibleContactAccounts$UpdateTask;,
        Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;,
        Lcom/android/htccontacts/util/SelectVisibleContactAccounts$GroupDelta;,
        Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;,
        Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountAdapter;
    }
.end annotation


# static fields
.field public static final ACCOUNT_CHANGE:I = 0x1

.field public static final ACCOUNT_COUNT:Ljava/lang/String; = "AccountCount"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "AccountName"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "AccountType"

.field public static final DATA_SET:Ljava/lang/String; = "DataSet"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SHOULD_SYNC:I = 0x1

.field private static final DEFAULT_VISIBLE:I = 0x0

.field public static final FIRSTTIME_LAUNCH:I = 0x0

.field public static final NO_OP:I = 0x2

.field public static final PEOPLE_ACCOUNT_CHANGE:Ljava/lang/String; = "PeopleAccountChange"

.field public static final PEOPLE_FIRSTTIME_LAUNCH:Ljava/lang/String; = "PeopleFirstTimeLaunch"

.field public static final PREFS_NAME:Ljava/lang/String; = "TipOfAccounts"

.field public static ScrollMessageAsWell:Z = false

.field private static final TAG:Ljava/lang/String; = "SelectVisibleContactAccounts"

.field private static mAccountDisplays:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

.field private static mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static mCheckNewAccount:Z

.field private static mDialogID:I

.field private static mListView:Landroid/widget/ListView;

.field private static mSources:Lcom/android/htccontacts/model/AccountTypeManager;

.field private static mWaitDlgID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 831
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mDialogID:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mCheckNewAccount:Z

    return v0
.end method

.method static synthetic access$200()Lcom/android/htccontacts/model/AccountTypeManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500()[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mAccountDisplays:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    return-object v0
.end method

.method static synthetic access$502([Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;)[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mAccountDisplays:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    return-object p0
.end method

.method static synthetic access$600()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mWaitDlgID:I

    return v0
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static checkOperation(Landroid/app/Activity;)I
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    const-string v6, "TipOfAccounts"

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 102
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v6, "PeopleFirstTimeLaunch"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 104
    .local v2, ifFirstTimeLaunch:Z
    const-string v6, "PeopleAccountChange"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 106
    .local v1, ifAccountChange:Z
    if-eqz v2, :cond_1

    .line 107
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "PeopleFirstTimeLaunch"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    if-eqz v1, :cond_0

    .line 112
    const-string v5, "PeopleAccountChange"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return v4

    .line 119
    :cond_1
    if-eqz v1, :cond_2

    .line 120
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "PeopleAccountChange"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    .line 123
    goto :goto_0

    .line 126
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public static clearActivityRef(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 909
    sget-object v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 910
    sget-object v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 911
    .local v0, localActivity:Landroid/app/Activity;
    if-ne v0, p0, :cond_0

    .line 912
    sget-object v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 913
    sget-object v1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 917
    .end local v0           #localActivity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public static createDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 6
    .parameter "activity"
    .parameter "DialogID"

    .prologue
    .line 145
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 147
    .local v0, dialogInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03006c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, dlgView:Landroid/view/View;
    sget-boolean v3, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    if-nez v3, :cond_0

    .line 150
    const v3, 0x7f0700fe

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 152
    .local v2, text1:Landroid/widget/TextView;
    sget-boolean v3, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mCheckNewAccount:Z

    if-eqz v3, :cond_1

    .line 153
    const v3, 0x7f0a0399

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 158
    .end local v2           #text1:Landroid/widget/TextView;
    :cond_0
    :goto_0
    const v3, 0x7f0700ff

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    sput-object v3, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mListView:Landroid/widget/ListView;

    .line 160
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02cb

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$2;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$1;

    invoke-direct {v5}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$1;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 155
    .restart local v2       #text1:Landroid/widget/TextView;
    :cond_1
    const v3, 0x7f0a0398

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static isFirstTimeLaunch(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    .line 94
    const-string v1, "TipOfAccounts"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "PeopleFirstTimeLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static startDialogAsync(Landroid/app/Activity;ZII)V
    .locals 2
    .parameter "activity"
    .parameter "bCheckNewAccount"
    .parameter "DialogID"
    .parameter "WaitDialogID"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 131
    sput p2, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mDialogID:I

    .line 132
    sput p3, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mWaitDlgID:I

    .line 133
    sput-boolean p1, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mCheckNewAccount:Z

    .line 134
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mSources:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 136
    sget v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->mDialogID:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 137
    new-instance v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;

    invoke-direct {v0}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->ScrollMessageAsWell:Z

    .line 141
    :cond_0
    return-void
.end method
