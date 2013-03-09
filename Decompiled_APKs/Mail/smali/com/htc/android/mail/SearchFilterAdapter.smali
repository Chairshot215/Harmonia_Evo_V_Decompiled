.class public Lcom/htc/android/mail/SearchFilterAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final ITEM:I = 0x65

.field private static final SEPARATOR:I = 0x66

.field private static final TAG:Ljava/lang/String; = "SearchFilterAdapter"


# instance fields
.field private listViewTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mListener:Landroid/view/View$OnClickListener;

.field private mSettings:I

.field private myInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/SearchFilterAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/Long;)V
    .locals 10
    .parameter "ctxt"
    .parameter "appCtxt"
    .parameter "accountId"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 190
    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/SearchFilterAdapter$1;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;)V

    iput-object v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, search_in:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, filter_by:[Ljava/lang/String;
    iput-object p2, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->myInflater:Landroid/view/LayoutInflater;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/htc/android/mail/Util;->getSearchFilterPref(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    .line 46
    invoke-direct {p0}, Lcom/htc/android/mail/SearchFilterAdapter;->getBooleanArray()[Z

    move-result-object v6

    .line 48
    .local v6, current_pref:[Z
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const v1, 0x7f0b0346

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x0

    aget-object v2, v8, v1

    const/16 v3, 0x65

    const/4 v1, 0x0

    aget-boolean v4, v6, v1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x1

    aget-object v2, v8, v1

    const/16 v3, 0x65

    const/4 v1, 0x1

    aget-boolean v4, v6, v1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x2

    aget-object v2, v8, v1

    const/16 v3, 0x65

    const/4 v1, 0x2

    aget-boolean v4, v6, v1

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const v1, 0x7f0b0347

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x0

    aget-object v2, v7, v1

    const/16 v3, 0x65

    const/4 v1, 0x3

    aget-boolean v4, v6, v1

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x1

    aget-object v2, v7, v1

    const/16 v3, 0x65

    const/4 v1, 0x4

    aget-boolean v4, v6, v1

    const/4 v5, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x2

    aget-object v2, v7, v1

    const/16 v3, 0x65

    const/4 v1, 0x5

    aget-boolean v4, v6, v1

    const/4 v5, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x3

    aget-object v2, v7, v1

    const/16 v3, 0x65

    const/4 v1, 0x6

    aget-boolean v4, v6, v1

    const/4 v5, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x4

    aget-object v2, v7, v1

    const/16 v3, 0x65

    const/4 v1, 0x7

    aget-boolean v4, v6, v1

    const/4 v5, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x5

    aget-object v2, v7, v1

    const/16 v3, 0x65

    const/16 v1, 0x8

    aget-boolean v4, v6, v1

    const/16 v5, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v9, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    const/4 v1, 0x6

    aget-object v2, v7, v1

    const/16 v3, 0x65

    const/16 v1, 0x9

    aget-boolean v4, v6, v1

    const/16 v5, 0x9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;-><init>(Lcom/htc/android/mail/SearchFilterAdapter;Ljava/lang/CharSequence;IZI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/SearchFilterAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/SearchFilterAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/SearchFilterAdapter;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/SearchFilterAdapter;->setItemClicked(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/mail/SearchFilterAdapter;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/SearchFilterAdapter;->setPref(IZ)V

    return-void
.end method

.method private getBooleanArray()[Z
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 221
    new-array v1, v3, [Z

    .line 222
    .local v1, ret:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/htc/android/mail/SearchFilterAdapter;->isPrefSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-object v1
.end method

.method private isPrefSet(I)Z
    .locals 3
    .parameter "column"

    .prologue
    const/4 v0, 0x1

    .line 209
    iget v1, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setItemClicked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/SearchFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    .line 106
    .local v0, item:Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
    iput-boolean p2, v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mIschecked:Z

    .line 107
    return-void
.end method

.method private setPref(IZ)V
    .locals 2
    .parameter "column"
    .parameter "set"

    .prologue
    const/4 v1, 0x1

    .line 213
    if-eqz p2, :cond_0

    .line 214
    iget v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchFilterAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchFilterAdapter;->notifyDataSetChanged()V

    .line 93
    iget-object v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 100
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/SearchFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    .line 136
    .local v0, item:Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
    iget v1, v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mTag:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 139
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSettingsValue()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x66

    const/4 v5, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/SearchFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    .line 147
    .local v1, item:Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
    if-nez p2, :cond_0

    .line 148
    iget v3, v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mTag:I

    if-ne v3, v6, :cond_2

    .line 149
    iget-object v3, p0, Lcom/htc/android/mail/SearchFilterAdapter;->myInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030044

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 150
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_0
    :goto_0
    iget v3, v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mTag:I

    if-ne v3, v6, :cond_3

    .line 160
    const v3, 0x7f09011b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    .local v2, itemLayout:Landroid/widget/TextView;
    :goto_1
    if-eqz v2, :cond_1

    .line 169
    iget-object v3, v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    return-object p2

    .line 152
    .end local v2           #itemLayout:Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/SearchFilterAdapter;->myInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090083

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 153
    iget-object v3, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 162
    :cond_3
    const v3, 0x2020010

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .restart local v2       #itemLayout:Landroid/widget/TextView;
    const v3, 0x202001f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 164
    .local v0, chk:Landroid/widget/CheckBox;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 165
    iget-boolean v3, v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mIschecked:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/SearchFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    iget v0, v0, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mTag:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public readSettings(Landroid/content/Context;Ljava/lang/Long;)Z
    .locals 6
    .parameter "appCtxt"
    .parameter "accountId"

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, needValidate:Z
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/htc/android/mail/Util;->getSearchFilterPref(Landroid/content/Context;J)I

    move-result v2

    .line 76
    .local v2, saved_settings:I
    iget v4, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    if-eq v2, v4, :cond_3

    .line 77
    iput v2, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    .line 78
    sget-boolean v4, Lcom/htc/android/mail/SearchFilterAdapter;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SearchFilterAdapter"

    const-string v5, "load previous settings"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    .line 80
    .local v3, tag:Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
    iget v4, v3, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mPrefPosition:I

    if-ltz v4, :cond_1

    .line 81
    iget v4, v3, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mPrefPosition:I

    invoke-direct {p0, v4}, Lcom/htc/android/mail/SearchFilterAdapter;->isPrefSet(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mIschecked:Z

    goto :goto_0

    .line 84
    .end local v3           #tag:Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
    :cond_2
    const/4 v1, 0x1

    .line 86
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    return v1
.end method

.method public setSearchFromContextMenu()V
    .locals 3

    .prologue
    .line 116
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    .line 117
    iget-object v2, p0, Lcom/htc/android/mail/SearchFilterAdapter;->listViewTag:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;

    .line 118
    .local v1, tag:Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
    iget v2, v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mPrefPosition:I

    if-ltz v2, :cond_0

    .line 119
    iget v2, v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mPrefPosition:I

    invoke-direct {p0, v2}, Lcom/htc/android/mail/SearchFilterAdapter;->isPrefSet(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;->mIschecked:Z

    goto :goto_0

    .line 122
    .end local v1           #tag:Lcom/htc/android/mail/SearchFilterAdapter$ViewTag;
    :cond_1
    return-void
.end method

.method public writeSettings(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 3
    .parameter "appCtxt"
    .parameter "accountId"

    .prologue
    .line 70
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lcom/htc/android/mail/SearchFilterAdapter;->mSettings:I

    invoke-static {p1, v0, v1, v2}, Lcom/htc/android/mail/Util;->writeSearchFilterPref(Landroid/content/Context;JI)V

    .line 71
    return-void
.end method
