.class public Lcom/android/CSDFunctionG/csdfunction;
.super Landroid/app/Activity;
.source "csdfunction.java"


# static fields
.field private static final CHECKSEND:I = 0x3e7

.field private static final ID_FIRST_BUTTION:I = 0x1

.field static final TAG:Ljava/lang/String; = "GSD_itemtest"

.field private static g_mMapchkboxGroup:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Select_AllFlag:Z

.field public b_RunGPSFlag:Z

.field public g_iScreenTimeOut:I

.field g_mHidecheckBox:Landroid/widget/CheckBox;

.field private g_mPressedTestBtn:Landroid/widget/Button;

.field g_mPressedTestchkbox:Landroid/widget/CheckBox;

.field private g_objAboutBtn:Landroid/widget/Button;

.field private g_objLinearLayout:Landroid/widget/LinearLayout;

.field private g_objMoreBtn:Landroid/widget/Button;

.field private g_objRunBtn:Landroid/widget/Button;

.field private g_objScrollView:Landroid/widget/ScrollView;

.field private g_objSelectAllBtn:Landroid/widget/Button;

.field private g_objSubLinearLayout:Landroid/widget/LinearLayout;

.field private g_objTestcheckboxBuild:Landroid/widget/CheckBox;

.field private g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field mToast:Landroid/widget/Toast;

.field sIMEI:Ljava/lang/String;

.field public testBtnClickListener:Landroid/view/View$OnClickListener;

.field testitemslist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/CSDFunctionG/csdfunction;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->testitemslist:Ljava/util/ArrayList;

    .line 33
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    .line 34
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    .line 35
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 36
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mHidecheckBox:Landroid/widget/CheckBox;

    .line 37
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objScrollView:Landroid/widget/ScrollView;

    .line 38
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objAboutBtn:Landroid/widget/Button;

    .line 42
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objRunBtn:Landroid/widget/Button;

    .line 44
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objMoreBtn:Landroid/widget/Button;

    .line 45
    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestBtn:Landroid/widget/Button;

    .line 47
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->tm:Landroid/telephony/TelephonyManager;

    .line 48
    iput v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_iScreenTimeOut:I

    .line 56
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/csdfunction;->b_RunGPSFlag:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/csdfunction;->Select_AllFlag:Z

    .line 90
    new-instance v0, Lcom/android/CSDFunctionG/csdfunction$1;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/csdfunction$1;-><init>(Lcom/android/CSDFunctionG/csdfunction;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->mHandler:Landroid/os/Handler;

    .line 586
    new-instance v0, Lcom/android/CSDFunctionG/csdfunction$2;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/csdfunction$2;-><init>(Lcom/android/CSDFunctionG/csdfunction;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->testBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private ShowDialog()V
    .locals 5

    .prologue
    .line 637
    const/4 v3, 0x0

    .line 638
    .local v3, strInfo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 640
    .local v2, strBtnName:Ljava/lang/String;
    const-string v3, "Please go to spacious place for better GPS signal receiving."

    .line 641
    const-string v2, "Yes"

    .line 643
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 645
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 646
    new-instance v4, Lcom/android/CSDFunctionG/csdfunction$3;

    invoke-direct {v4, p0}, Lcom/android/CSDFunctionG/csdfunction$3;-><init>(Lcom/android/CSDFunctionG/csdfunction;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 652
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 653
    return-void
.end method

.method private SpecialButtonCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, iBtnIdOffset:I
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objAboutBtn:Landroid/widget/Button;

    .line 133
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    .line 134
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objRunBtn:Landroid/widget/Button;

    .line 135
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objMoreBtn:Landroid/widget/Button;

    .line 137
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    .line 138
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const-string v2, "GSD_itemtest"

    const-string v3, "Set\tButton Name:about"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objAboutBtn:Landroid/widget/Button;

    const-string v3, "About"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objAboutBtn:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objAboutBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setWidth(I)V

    .line 150
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objAboutBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHeight(I)V

    .line 151
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objAboutBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->testBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objAboutBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    const-string v3, "Select All"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setWidth(I)V

    .line 160
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHeight(I)V

    .line 161
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->testBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objRunBtn:Landroid/widget/Button;

    const-string v3, "Run"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objRunBtn:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objRunBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setWidth(I)V

    .line 170
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objRunBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHeight(I)V

    .line 171
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objRunBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->testBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objRunBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objMoreBtn:Landroid/widget/Button;

    const-string v3, "More"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objMoreBtn:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objMoreBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setWidth(I)V

    .line 180
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objMoreBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHeight(I)V

    .line 181
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objMoreBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->testBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objMoreBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0xe6

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 187
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method private TestCheckboxCreate(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, strTestItemarray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, strcheckboxName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 195
    .local v1, iteratorGrp:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 196
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    sget-object v4, Lcom/android/CSDFunctionG/csdfunction;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_0

    .line 201
    sget-object v4, Lcom/android/CSDFunctionG/csdfunction;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 202
    const/4 v4, 0x0

    sput-object v4, Lcom/android/CSDFunctionG/csdfunction;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    .line 204
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v4, Lcom/android/CSDFunctionG/csdfunction;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    if-nez v1, :cond_2

    .line 251
    :cond_1
    return-void

    .line 212
    :cond_2
    const-string v4, "GSD_itemtest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry\tTest Grp Size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, iBtnIdOffset:I
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    .line 217
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    .line 218
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    .line 219
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #strcheckboxName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 224
    .restart local v3       #strcheckboxName:Ljava/lang/String;
    const-string v4, "GSD_itemtest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set\tcheckbox Name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setWidth(I)V

    .line 232
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    sget-object v4, Lcom/android/CSDFunctionG/csdfunction;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #strcheckboxName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 239
    .restart local v3       #strcheckboxName:Ljava/lang/String;
    const-string v4, "GSD_itemtest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set\tcheckbox Name2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setWidth(I)V

    .line 246
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    sget-object v4, Lcom/android/CSDFunctionG/csdfunction;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_3
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/csdfunction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/CSDFunctionG/csdfunction;->ShowDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/CSDFunctionG/csdfunction;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/CSDFunctionG/csdfunction;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/CSDFunctionG/csdfunction;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/CSDFunctionG/csdfunction;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "strchkboxName"

    .prologue
    .line 276
    sget-object v0, Lcom/android/CSDFunctionG/csdfunction;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method private initTestView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 254
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 256
    .local v0, win:Landroid/view/Window;
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objScrollView:Landroid/widget/ScrollView;

    .line 257
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    .line 259
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 260
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 261
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objScrollView:Landroid/widget/ScrollView;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 270
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/csdfunction;->setContentView(Landroid/view/View;)V

    .line 271
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_objScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setKeepScreenOn(Z)V

    .line 272
    return-void
.end method


# virtual methods
.method public BacklightTest()V
    .locals 2

    .prologue
    .line 344
    const-string v1, "Backlight test\tStart\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/backlighttest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method public BatrundownTest()V
    .locals 2

    .prologue
    .line 369
    const-string v1, "Battery RunDown test\tStart\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/batteryrundown;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method public ButtonTest()V
    .locals 2

    .prologue
    .line 303
    const-string v1, "Button\ttest Start\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/buttontest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method public CheckAllchkbox(Z)V
    .locals 5
    .parameter "ischeckedflag"

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, strchkboxName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 282
    .local v0, iteratordescription:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->testitemslist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    const-string v2, "GSD_itemtest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check chkbox\tflag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-nez v0, :cond_1

    .line 299
    :cond_0
    return-void

    .line 290
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #strchkboxName:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 294
    .restart local v1       #strchkboxName:Ljava/lang/String;
    const-string v2, "GSD_itemtest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get checkbox\tname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, v1}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 297
    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public Copyright()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/copyright;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.method public FlashlightTest()V
    .locals 2

    .prologue
    .line 360
    const-string v1, "Flashlight\ttest Start\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/flashlight;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 365
    return-void
.end method

.method public Gsensortest()V
    .locals 2

    .prologue
    .line 394
    const-string v1, "G sensor\tStart\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/Gsensortest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method

.method public LEDTest()V
    .locals 2

    .prologue
    .line 352
    const-string v1, "LED test\tStart\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/ledtest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 357
    return-void
.end method

.method public LineDrawingTest()V
    .locals 4

    .prologue
    .line 333
    const-string v2, "Line\tDrawing\ttest Start\r\n"

    invoke-static {v2}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/CSDFunctionG/touchtest;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "TestMode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method public Moretestitem()V
    .locals 2

    .prologue
    .line 430
    const-string v1, "More test items Start\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/moretestitems;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->finish()V

    .line 435
    return-void
.end method

.method public Psensor()V
    .locals 2

    .prologue
    .line 402
    const-string v1, "P sensor\tStart\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/Proximitytest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method public Run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 506
    const/4 v0, 0x1

    .line 507
    .local v0, i_OnlyRunGPS:I
    const/4 v3, 0x0

    .line 508
    .local v3, strchkboxName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 509
    .local v2, iteratordescription:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 510
    .local v1, it_Checkcount:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->testitemslist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 511
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->testitemslist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 512
    if-nez v1, :cond_1

    .line 585
    :cond_0
    return-void

    .line 516
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 518
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #strchkboxName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 519
    .restart local v3       #strchkboxName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 520
    invoke-direct {p0, v3}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 521
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    const-string v4, "AGPS Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_2
    if-eqz v2, :cond_0

    .line 532
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #strchkboxName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 535
    .restart local v3       #strchkboxName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 536
    invoke-direct {p0, v3}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 537
    iget-object v4, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 540
    const-string v4, "Vibrator Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 541
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->VibratorTest()V

    .line 542
    :cond_4
    const-string v4, "Backlight Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 543
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->BacklightTest()V

    .line 544
    :cond_5
    const-string v4, "Line Drawing Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 545
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->LineDrawingTest()V

    .line 546
    :cond_6
    const-string v4, "Test Log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 547
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->log()V

    .line 548
    :cond_7
    const-string v4, "LED Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 549
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->LEDTest()V

    .line 550
    :cond_8
    const-string v4, "Button Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 551
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->ButtonTest()V

    .line 552
    :cond_9
    const-string v4, "Flashlight Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 553
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->FlashlightTest()V

    .line 554
    :cond_a
    const-string v4, "Battery RunDown Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 555
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->BatrundownTest()V

    .line 556
    :cond_b
    const-string v4, "Audio Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 557
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 558
    :cond_c
    const-string v4, "Headset Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 559
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 560
    :cond_d
    const-string v4, "G-Sensor Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 561
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->Gsensortest()V

    .line 562
    :cond_e
    const-string v4, "P-Sensor Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 563
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->Psensor()V

    .line 564
    :cond_f
    const-string v4, "Light-Sensor Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 565
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->lightsensorTest()V

    .line 566
    :cond_10
    const-string v4, "Wi-Fi Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 567
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 568
    :cond_11
    const-string v4, "Bluetooth Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 569
    invoke-virtual {p0, v5}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 570
    :cond_12
    const-string v4, "SD card +Camera Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 571
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 572
    :cond_13
    const-string v4, "Charger Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 573
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 574
    :cond_14
    const-string v4, "AGPS Test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 576
    if-ne v0, v5, :cond_15

    .line 577
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    goto/16 :goto_1

    .line 579
    :cond_15
    iput-boolean v5, p0, Lcom/android/CSDFunctionG/csdfunction;->b_RunGPSFlag:Z

    goto/16 :goto_1
.end method

.method public Run_Selectall()V
    .locals 1

    .prologue
    .line 443
    const-string v0, "Wi-Fi Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 444
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 447
    :cond_0
    const-string v0, "Bluetooth Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 448
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 451
    :cond_1
    const-string v0, "SD card +Camera Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 452
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 455
    :cond_2
    const-string v0, "Charger Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 456
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 459
    :cond_3
    const-string v0, "Audio Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 460
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 463
    :cond_4
    const-string v0, "Headset Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 464
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->declarefunction(I)V

    .line 467
    :cond_5
    const-string v0, "Line Drawing Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 468
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 469
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->LineDrawingTest()V

    .line 471
    :cond_6
    const-string v0, "Light-Sensor Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 472
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 473
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->lightsensorTest()V

    .line 475
    :cond_7
    const-string v0, "P-Sensor Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 476
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 477
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->Psensor()V

    .line 478
    :cond_8
    const-string v0, "Button Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 479
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 480
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->ButtonTest()V

    .line 482
    :cond_9
    const-string v0, "LED Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 483
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 484
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->LEDTest()V

    .line 486
    :cond_a
    const-string v0, "Vibrator Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 487
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 488
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->VibratorTest()V

    .line 490
    :cond_b
    const-string v0, "Backlight Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 491
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 492
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->BacklightTest()V

    .line 494
    :cond_c
    const-string v0, "G-Sensor Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 495
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 496
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->Gsensortest()V

    .line 498
    :cond_d
    const-string v0, "Flashlight Test"

    invoke-direct {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 499
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 500
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->FlashlightTest()V

    .line 502
    :cond_e
    return-void
.end method

.method public VibratorTest()V
    .locals 3

    .prologue
    .line 311
    const-string v1, "GSD_itemtest"

    const-string v2, "Run VibratorTest:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v1, "Vibrator\ttest Start\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/vibratortest;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public declarefunction(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 420
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/CSDFunctionG/declare;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 423
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ModeTest"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 426
    return-void
.end method

.method public lightsensorTest()V
    .locals 2

    .prologue
    .line 411
    const-string v1, "Light sensor\tStart\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/lightsensor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 416
    return-void
.end method

.method public log()V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/log;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/csdfunction;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 682
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 684
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/android/CSDFunctionG/csdfunction;->initTestView()V

    .line 67
    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->getalltestitem()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->testitemslist:Ljava/util/ArrayList;

    .line 68
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->testitemslist:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/CSDFunctionG/csdfunction;->TestCheckboxCreate(Ljava/util/ArrayList;)V

    .line 69
    invoke-direct {p0}, Lcom/android/CSDFunctionG/csdfunction;->SpecialButtonCreate()V

    .line 71
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->setlogtitle(Ljava/lang/String;)V

    .line 72
    const-string v1, "======================================\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->sIMEI:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMEI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/CSDFunctionG/csdfunction;->sIMEI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 75
    const-string v1, "====================\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x3e7

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/CSDFunctionG/csdfunction;->g_iScreenTimeOut:I

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    const v1, 0x7f060005

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->mToast:Landroid/widget/Toast;

    .line 87
    iget-object v1, p0, Lcom/android/CSDFunctionG/csdfunction;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 89
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "GSD_itemtest"

    const-string v2, "could\tnot\tpersist\tscreen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 671
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 672
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 674
    :cond_0
    const-string v0, "\r\nEnd\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 675
    const-string v0, "======================================\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 656
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/CSDFunctionG/csdfunction;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 660
    :cond_0
    const-string v0, "\r\nEnd\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 661
    const-string v0, "======================================\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_iScreenTimeOut:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->finish()V

    .line 667
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 117
    const-string v0, "GSD_itemtest"

    const-string v1, "onStart ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 123
    const-string v0, "GSD_itemtest"

    const-string v1, "onStop() ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/csdfunction;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/CSDFunctionG/csdfunction;->g_iScreenTimeOut:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    return-void
.end method
