.class public Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.super Landroid/app/Activity;
.source "ContactSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemViews;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$EditTextWatcher;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;
    }
.end annotation


# static fields
.field private static BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan; = null

.field private static BACKGROUND_SPAN_COLOR:I = 0x0

.field private static FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan; = null

.field private static FOREGROUND_SPAN_COLOR:I = 0x0

.field private static final QUERY_NAME_TOKEN:I = 0x3e9

.field private static final QUERY_TOKEN:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "HtcContactWidgetSetting"

.field private static final localLOGV:Z

.field private static mbIsGroupNameQueryDone:Z


# instance fields
.field private GROUP_VISIBLE_CLAUSE:Ljava/lang/String;

.field public listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mACTextView:Landroid/widget/AutoCompleteTextView;

.field private mContactSettingActivity:Landroid/app/Activity;

.field protected mCursor:Landroid/database/Cursor;

.field public mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mDefaultGroupImage:Landroid/graphics/drawable/Drawable;

.field private mEditorBox:Landroid/widget/EditText;

.field private mFavoriteMemberCount:I

.field private mGroupDefaultResID:I

.field public mGroupIDIdx:I

.field private mGroupList:Lcom/htc/widget/HtcListView;

.field private mGroupListItemPool:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;

.field public mGroupMemberCountIdx:I

.field public mGroupNameIdx:I

.field public mGroupPhotoIndex:I

.field public mInputTextWatcher:Landroid/text/TextWatcher;

.field private mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

.field private mSearchBar:Lcom/htc/widget/HeaderBarInput;

.field private mSearchBox:Lcom/htc/widget/SearchBoxView;

.field private mUIHandler:Landroid/os/Handler;

.field private mbIsActivityForeground:Z

.field public nResListItemLayout:I

.field public searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsGroupNameQueryDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    iput v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mFavoriteMemberCount:I

    .line 110
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;

    invoke-direct {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupListItemPool:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;

    .line 122
    const-string v0, "(  deleted= 0 )"

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->GROUP_VISIBLE_CLAUSE:Ljava/lang/String;

    .line 124
    const v0, 0x7f030001

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->nResListItemLayout:I

    .line 133
    iput-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsActivityForeground:Z

    .line 136
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$1;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 704
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mUIHandler:Landroid/os/Handler;

    .line 919
    return-void
.end method

.method static synthetic access$000(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mContactSettingActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupDefaultResID:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/database/Cursor;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getMemberCount(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200()Landroid/text/style/BackgroundColorSpan;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/text/style/ForegroundColorSpan;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getName(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/widget/HeaderBarInput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBar:Lcom/htc/widget/HeaderBarInput;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getInputText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsActivityForeground:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupListItemPool:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mDefaultGroupImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mDefaultGroupImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;
    .locals 4
    .parameter "text"
    .parameter "key"
    .parameter "backSpan"
    .parameter "foreSpan"

    .prologue
    .line 1077
    const/4 v0, 0x0

    .line 1078
    .local v0, result:Landroid/text/SpannableString;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1087
    .end local v0           #result:Landroid/text/SpannableString;
    .local v1, result:Landroid/text/SpannableString;
    :goto_0
    return-object v1

    .line 1081
    .end local v1           #result:Landroid/text/SpannableString;
    .restart local v0       #result:Landroid/text/SpannableString;
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->isContainChineseWord(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    invoke-static {p0, p1, p2, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->generateMarkedCharSequence1(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1087
    .end local v0           #result:Landroid/text/SpannableString;
    .restart local v1       #result:Landroid/text/SpannableString;
    goto :goto_0

    .line 1085
    .end local v1           #result:Landroid/text/SpannableString;
    .restart local v0       #result:Landroid/text/SpannableString;
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->generateMarkedCharSequence2(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_1
.end method

.method public static generateMarkedCharSequence1(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;
    .locals 8
    .parameter "text"
    .parameter "key"
    .parameter "backSpan"
    .parameter "foreSpan"

    .prologue
    const/16 v7, 0x21

    const/4 v0, 0x0

    .line 1101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-object v0

    .line 1105
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1112
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1113
    .local v4, lowtext:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1115
    .local v3, lowkey:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1116
    .local v2, index:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v2, v5

    .line 1117
    .local v1, end:I
    if-ltz v2, :cond_0

    if-gt v2, v1, :cond_0

    .line 1120
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1122
    .local v0, displayString:Landroid/text/SpannableString;
    invoke-virtual {v0, p2, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1124
    invoke-virtual {v0, p3, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static generateMarkedCharSequence2(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;
    .locals 8
    .parameter "text"
    .parameter "key"
    .parameter "backSpan"
    .parameter "foreSpan"

    .prologue
    const/16 v7, 0x21

    const/4 v0, 0x0

    .line 1146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-object v0

    .line 1150
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1157
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1158
    .local v4, lowtext:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1161
    .local v3, lowkey:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getStartIndex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1162
    .local v2, index:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v2, v5

    .line 1163
    .local v1, end:I
    if-ltz v2, :cond_0

    if-gt v2, v1, :cond_0

    .line 1166
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1168
    .local v0, displayString:Landroid/text/SpannableString;
    invoke-virtual {v0, p2, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1170
    invoke-virtual {v0, p3, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private getId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "c"

    .prologue
    .line 846
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupIDIdx:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getInputText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    :goto_0
    return-object v0

    .line 688
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getMemberCount(Landroid/database/Cursor;)J
    .locals 3
    .parameter "c"

    .prologue
    const-wide/16 v0, 0x0

    .line 860
    iget v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupMemberCountIdx:I

    if-gez v2, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupMemberCountIdx:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getName(Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "bRequestDisplay"

    .prologue
    const/4 v0, 0x0

    .line 851
    if-eqz p2, :cond_2

    .line 853
    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-object v0

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mContactSettingActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupNameIdx:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 855
    :cond_2
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupNameIdx:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStartIndex(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "text"
    .parameter "key"
    .parameter "startIndex"

    .prologue
    .line 1176
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1177
    .local v0, index:I
    if-gtz v0, :cond_1

    .line 1184
    .end local v0           #index:I
    :cond_0
    :goto_0
    return v0

    .line 1180
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1181
    .local v1, prevChar:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1184
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getStartIndex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private initColorSpan()V
    .locals 3

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 391
    .local v0, res:Landroid/content/res/Resources;
    const-string v1, "text_selection_highlight"

    const v2, 0x20a001b

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->BACKGROUND_SPAN_COLOR:I

    .line 392
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    sget v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->BACKGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->BACKGROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    .line 393
    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->FOREGROUND_SPAN_COLOR:I

    .line 394
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->FOREGROUND_SPAN_COLOR:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->FOREGROUND_SPAN:Landroid/text/style/ForegroundColorSpan;

    .line 395
    return-void
.end method

.method private static final isChineseCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1190
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 1191
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 1197
    :cond_0
    const/4 v1, 0x1

    .line 1199
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isContainChineseWord(Ljava/lang/String;)Z
    .locals 5
    .parameter "word"

    .prologue
    .line 1203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1204
    const/4 v2, 0x0

    .line 1215
    :cond_0
    :goto_0
    return v2

    .line 1206
    :cond_1
    const/4 v2, 0x0

    .line 1207
    .local v2, result:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1208
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1209
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1210
    .local v3, utf8Char:C
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->isChineseCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1211
    const/4 v2, 0x1

    .line 1212
    goto :goto_0

    .line 1208
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CacheCursorIndex(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 825
    if-eqz p1, :cond_0

    .line 828
    :try_start_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupIDIdx:I

    .line 829
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupNameIdx:I

    .line 833
    const-string v1, "summ_count"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupMemberCountIdx:I

    .line 837
    const-string v1, "photo"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupPhotoIndex:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "HtcContactWidgetSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openGroup - Database column not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public SearchByChangedText(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    invoke-virtual {v0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->doSearch(Ljava/lang/String;)V

    .line 684
    :cond_0
    return-void
.end method

.method public addGroup()V
    .locals 3

    .prologue
    .line 1066
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1067
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.group.GroupEditActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    invoke-virtual {p0, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->startActivity(Landroid/content/Intent;)V

    .line 1070
    return-void
.end method

.method protected newListAdapter(Landroid/database/Cursor;)Landroid/widget/CursorAdapter;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 872
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->nResListItemLayout:I

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemAdapter;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 878
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAfterHandleSearchResult()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method protected onBeforeHandleSearchResult()V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 27
    .parameter "savedInstanceState"

    .prologue
    .line 189
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->requestWindowFeature(I)Z

    .line 191
    const/16 v23, 0x0

    sput-boolean v23, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsGroupNameQueryDone:Z

    .line 193
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 194
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->setRequestedOrientation(I)V

    .line 200
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const v23, 0x7f030002

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->setContentView(I)V

    .line 203
    const v23, 0x2080251

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupDefaultResID:I

    .line 205
    const v23, 0x7f0a000a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/HtcListView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mContactSettingActivity:Landroid/app/Activity;

    .line 214
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v23

    if-nez v23, :cond_6

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "search_box"

    const-string v25, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 218
    .local v9, SearchBoxid:I
    if-eqz v9, :cond_0

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 221
    .local v20, mTitle:Landroid/view/View;
    if-eqz v20, :cond_0

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "common_app_bkg"

    const-string v25, "drawable"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 223
    const-string v23, "common_app_bkg"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 224
    if-eqz v9, :cond_0

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getWindow()Landroid/view/Window;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 243
    .end local v20           #mTitle:Landroid/view/View;
    :cond_0
    const v23, 0x7f0a0006

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "common_app_bkg"

    const-string v25, "drawable"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 245
    .local v11, bkgId:I
    const-string v23, "common_app_bkg"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    .line 246
    if-eqz v11, :cond_1

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getWindow()Landroid/view/Window;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 249
    :cond_1
    const v23, 0x7f0a0008

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/HeaderBarInput;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBar:Lcom/htc/widget/HeaderBarInput;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBar:Lcom/htc/widget/HeaderBarInput;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBar:Lcom/htc/widget/HeaderBarInput;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBar:Lcom/htc/widget/HeaderBarInput;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HeaderBarInput;->setClearIconVisibility(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBar:Lcom/htc/widget/HeaderBarInput;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v23, v0

    const/16 v24, 0xb1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v23, v0

    const v24, 0x7f080007

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 263
    :cond_2
    const v23, 0x7f0a0009

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HeaderBarImage;

    .line 264
    .local v13, createGroup:Lcom/htc/widget/HeaderBarImage;
    if-eqz v13, :cond_3

    .line 266
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 267
    const v23, 0x7f08000b

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 268
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "common_icon_glance_add_rest"

    const-string v25, "drawable"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 271
    .local v17, iconResId:I
    if-eqz v17, :cond_3

    .line 272
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 273
    new-instance v23, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$2;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .end local v17           #iconResId:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "title_15_button_right_2"

    const-string v25, "id"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 283
    .local v6, AddGroupid:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 284
    .local v4, AddGroupBtn:Landroid/widget/ImageButton;
    if-eqz v4, :cond_5

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "common_icon_titlebar_add_rest"

    const-string v25, "drawable"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 287
    .restart local v17       #iconResId:I
    if-eqz v17, :cond_4

    .line 288
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 289
    :cond_4
    new-instance v23, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$3;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    .end local v17           #iconResId:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "title_15_img_1x1"

    const-string v25, "id"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 299
    .local v5, AddGroupImg:Landroid/widget/ImageView;
    if-eqz v5, :cond_6

    .line 300
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    .end local v4           #AddGroupBtn:Landroid/widget/ImageButton;
    .end local v5           #AddGroupImg:Landroid/widget/ImageView;
    .end local v6           #AddGroupid:I
    .end local v9           #SearchBoxid:I
    .end local v11           #bkgId:I
    .end local v13           #createGroup:Lcom/htc/widget/HeaderBarImage;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    .line 305
    .local v19, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    if-eqz v19, :cond_d

    .line 310
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 312
    const v23, 0x7f0a0007

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "editing_title_label"

    const-string v25, "id"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 315
    .local v18, id:I
    if-eqz v18, :cond_7

    .line 317
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 318
    .local v22, title:Landroid/widget/TextView;
    const v23, 0x7f080007

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 321
    .end local v22           #title:Landroid/widget/TextView;
    :cond_7
    const v23, 0x20900bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 322
    .local v15, header2:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "search_box_layout"

    const-string v25, "id"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 326
    .local v8, SearchBGid:I
    if-eqz v8, :cond_8

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 329
    .local v7, BGLayout:Landroid/widget/LinearLayout;
    if-eqz v7, :cond_8

    .line 331
    const v23, 0x7f050005

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 335
    .end local v7           #BGLayout:Landroid/widget/LinearLayout;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const-string v24, "title_15_searchboxview_1x1"

    const-string v25, "id"

    const-string v26, "com.htc"

    invoke-virtual/range {v23 .. v26}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 336
    .local v10, Searchid:I
    if-eqz v10, :cond_9

    .line 338
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/SearchBoxView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mSearchBox:Lcom/htc/widget/SearchBoxView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/widget/SearchBoxView;->getTextField()Landroid/widget/EditText;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    const/16 v24, 0xb1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setInputType(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    const v24, 0x20c0142

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->requestFocus()Z

    .line 352
    :cond_9
    const v23, 0x209005e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 353
    .local v14, header:Landroid/view/View;
    const v23, 0x2020105

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 354
    .local v21, text:Landroid/widget/TextView;
    const v23, 0x2020104

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 355
    .local v16, icon:Landroid/widget/ImageView;
    if-eqz v21, :cond_a

    .line 356
    const v23, 0x7f08000a

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 359
    :cond_a
    if-eqz v16, :cond_b

    .line 360
    const v23, 0x20802e1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    :cond_b
    const v23, 0x2020103

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 364
    .local v12, compose:Landroid/view/View;
    if-eqz v12, :cond_c

    .line 365
    new-instance v23, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$4;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;)V

    .line 380
    .end local v8           #SearchBGid:I
    .end local v10           #Searchid:I
    .end local v12           #compose:Landroid/view/View;
    .end local v14           #header:Landroid/view/View;
    .end local v15           #header2:Landroid/view/View;
    .end local v16           #icon:Landroid/widget/ImageView;
    .end local v18           #id:I
    .end local v21           #text:Landroid/widget/TextView;
    :cond_d
    return-void

    .line 195
    .end local v19           #inflater:Landroid/view/LayoutInflater;
    :cond_e
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->hasKeyboard()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 196
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 198
    :cond_f
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 483
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mContactSettingActivity:Landroid/app/Activity;

    .line 485
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupListItemPool:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;

    invoke-virtual {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$GroupListItemPool;->clearItems()V

    .line 487
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 449
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 452
    iput-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    if-eqz v0, :cond_1

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsActivityForeground:Z

    .line 458
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    invoke-virtual {v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->destroy()V

    .line 459
    iput-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    .line 466
    :cond_1
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 407
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->setInputWatcher()V

    .line 408
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 418
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    if-nez v1, :cond_0

    .line 419
    new-instance v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    invoke-direct {v1, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V

    iput-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->initColorSpan()V

    .line 421
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    if-nez v1, :cond_1

    .line 422
    new-instance v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    .line 423
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsActivityForeground:Z

    .line 427
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->getInputText()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, inputString:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    if-eqz v1, :cond_2

    .line 430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    invoke-virtual {v1, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->doSearch(Ljava/lang/String;)V

    .line 436
    :cond_2
    :goto_0
    return-void

    .line 433
    :cond_3
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->searchModule:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$SimpleSearchModule;->doSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 470
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 477
    return-void
.end method

.method public setInputWatcher()V
    .locals 2

    .prologue
    .line 639
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$EditTextWatcher;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$EditTextWatcher;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mInputTextWatcher:Landroid/text/TextWatcher;

    .line 641
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mACTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mEditorBox:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method startQuery(Ljava/lang/String;)V
    .locals 24
    .parameter "pattern"

    .prologue
    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mContactSettingActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    if-eqz v2, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->cancelOperation(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->cancelOperation(I)V

    .line 510
    :cond_2
    const/4 v7, 0x0

    .line 514
    .local v7, whereClause:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 517
    sget-object v5, Landroid/provider/HtcContactsContract$Groups;->CONTENT_NAME_LIST_URI:Landroid/net/Uri;

    .line 518
    .local v5, simpleUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsGroupNameQueryDone:Z

    if-nez v2, :cond_3

    .line 521
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsGroupNameQueryDone:Z

    .line 535
    :cond_3
    sget-object v11, Landroid/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 536
    .local v11, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    if-eqz v2, :cond_0

    .line 539
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 541
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    const/16 v9, 0x3e8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v7

    invoke-virtual/range {v8 .. v15}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 528
    .end local v11           #uri:Landroid/net/Uri;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v9, "title COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v9}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 546
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    const/16 v9, 0x3e8

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v15, "title COLLATE LOCALIZED ASC"

    move-object v13, v7

    invoke-virtual/range {v8 .. v15}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 555
    .end local v5           #simpleUri:Landroid/net/Uri;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_6
    sget-object v2, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "groups_name_summary_search"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 556
    .local v15, simpleSummaryUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsGroupNameQueryDone:Z

    if-nez v2, :cond_7

    .line 561
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 563
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    const/16 v13, 0x3e9

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mbIsGroupNameQueryDone:Z

    .line 575
    :cond_7
    sget-object v2, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "groups_name_search"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 576
    .local v19, simplenameUri:Landroid/net/Uri;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    if-eqz v2, :cond_0

    .line 581
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x3e8

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v23}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 568
    .end local v19           #simplenameUri:Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    const/16 v13, 0x3e9

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string v19, "title COLLATE LOCALIZED ASC"

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v19}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 588
    .restart local v19       #simplenameUri:Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x3e8

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const-string v23, "title COLLATE LOCALIZED ASC"

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v23}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
