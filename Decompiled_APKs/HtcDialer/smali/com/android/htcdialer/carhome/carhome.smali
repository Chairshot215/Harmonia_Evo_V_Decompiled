.class public Lcom/android/htcdialer/carhome/carhome;
.super Landroid/app/Activity;
.source "carhome.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CarHome"

.field private static final localLOGV:Z


# instance fields
.field private mCallHisButton:Landroid/widget/ImageView;

.field private mCallHisText:Landroid/widget/TextView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field public mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mDialerButton:Landroid/widget/ImageView;

.field private mDialerText:Landroid/widget/TextView;

.field private mDisplayModeFlag:Ljava/lang/Long;

.field private mFavButton:Landroid/widget/ImageView;

.field private mFavoriteMemberCount:I

.field private mFavoritesColumn:I

.field private mFavoritesText:Landroid/widget/TextView;

.field private mGroupDefaultResID:I

.field private mRecentCallsColumn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoritesColumn:I

    .line 39
    iput v0, p0, Lcom/android/htcdialer/carhome/carhome;->mRecentCallsColumn:I

    .line 49
    iput v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoriteMemberCount:I

    return-void
.end method

.method private RelayoutUI()V
    .locals 12

    .prologue
    const/16 v11, 0x3c0

    .line 202
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisButton:Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerButton:Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisText:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerText:Landroid/widget/TextView;

    if-nez v9, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 207
    .local v4, nOrientation:I
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 208
    .local v0, nActivityHeight:I
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 210
    .local v1, nActivityWidth:I
    const/4 v2, 0x0

    .local v2, nExtraMargin:I
    const/4 v3, 0x0

    .line 213
    .local v3, nExtraTopMargin:I
    if-eq v1, v11, :cond_2

    if-ne v0, v11, :cond_3

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a012f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 220
    :cond_3
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 221
    .local v6, paramsCallhistoryIcon:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerButton:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    .local v7, paramsDialerIcon:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    .local v5, paramsCallHisText:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    .local v8, paramsDialerText:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v4, :cond_4

    .line 228
    if-ne v0, v11, :cond_0

    .line 231
    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 232
    iget v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 234
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 238
    :cond_4
    const/4 v9, 0x1

    if-eq v4, v9, :cond_5

    const/4 v9, 0x3

    if-ne v4, v9, :cond_0

    .line 240
    :cond_5
    if-ne v1, v11, :cond_0

    .line 242
    iget v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v2

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 243
    iget v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v2

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 244
    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v2

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 245
    iget v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v10, v2, 0x2

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 247
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerButton:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisText:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v9, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerText:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/htcdialer/carhome/carhome;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoritesColumn:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/htcdialer/carhome/carhome;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/htcdialer/carhome/carhome;->mRecentCallsColumn:I

    return v0
.end method

.method private renewCursor()V
    .locals 10

    .prologue
    .line 163
    const/4 v8, 0x0

    .line 167
    .local v8, count:I
    :try_start_0
    const-string v0, "content://com.android.contacts/contacts/simple"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 168
    .local v1, peopleUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 169
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 170
    const/4 v8, 0x0

    .line 171
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 172
    iput v8, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoritesColumn:I

    .line 173
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 181
    :goto_0
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "dialer/calllogs"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 183
    .local v3, calllog:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/htcdialer/carhome/carhome;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 184
    if-eqz v9, :cond_1

    .line 185
    const/4 v8, 0x0

    .line 186
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 187
    iput v8, p0, Lcom/android/htcdialer/carhome/carhome;->mRecentCallsColumn:I

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 198
    .end local v1           #peopleUri:Landroid/net/Uri;
    .end local v3           #calllog:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_1
    return-void

    .line 176
    .restart local v1       #peopleUri:Landroid/net/Uri;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoritesColumn:I

    goto :goto_0

    .line 193
    .end local v1           #peopleUri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 191
    .restart local v1       #peopleUri:Landroid/net/Uri;
    .restart local v3       #calllog:Landroid/net/Uri;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/carhome/carhome;->mRecentCallsColumn:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 195
    .end local v1           #peopleUri:Landroid/net/Uri;
    .end local v3           #calllog:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public CheckMakeCallPageStatus()V
    .locals 6

    .prologue
    const v5, 0x7f060009

    const v4, 0x7f060008

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    iget v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoritesColumn:I

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoritesText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :goto_0
    iget v0, p0, Lcom/android/htcdialer/carhome/carhome;->mRecentCallsColumn:I

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :goto_1
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoritesText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->requestWindowFeature(I)Z

    .line 56
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->setRequestedOrientation(I)V

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    invoke-direct {p0}, Lcom/android/htcdialer/carhome/carhome;->renewCursor()V

    .line 62
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->onCreateCarHome()V

    .line 64
    invoke-direct {p0}, Lcom/android/htcdialer/carhome/carhome;->RelayoutUI()V

    .line 65
    return-void
.end method

.method public onCreateCarHome()V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->setContentView(I)V

    .line 71
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavButton:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisButton:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerButton:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavoritesText:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisText:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/carhome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerText:Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->CheckMakeCallPageStatus()V

    .line 80
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mFavButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/htcdialer/carhome/carhome$1;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/carhome/carhome$1;-><init>(Lcom/android/htcdialer/carhome/carhome;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mCallHisButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/htcdialer/carhome/carhome$2;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/carhome/carhome$2;-><init>(Lcom/android/htcdialer/carhome/carhome;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/htcdialer/carhome/carhome;->mDialerButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/htcdialer/carhome/carhome$3;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/carhome/carhome$3;-><init>(Lcom/android/htcdialer/carhome/carhome;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/android/htcdialer/carhome/carhome;->renewCursor()V

    .line 150
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/carhome;->CheckMakeCallPageStatus()V

    .line 151
    return-void
.end method
