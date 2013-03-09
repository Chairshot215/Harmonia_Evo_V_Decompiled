.class public Lcom/android/CSDFunctionG/moretestitems;
.super Landroid/app/Activity;
.source "moretestitems.java"


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
.field public b_HideBTNCHK:Z

.field private cbListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public g_iHideBoxCount:I

.field public g_iScreenTimeOut:I

.field g_mHidecheckBox:Landroid/widget/CheckBox;

.field private g_mPressedTestBtn:Landroid/widget/Button;

.field g_mPressedTestchkbox:Landroid/widget/CheckBox;

.field private g_objAboutBtn:Landroid/widget/Button;

.field private g_objBackBtn:Landroid/widget/Button;

.field private g_objLinearLayout:Landroid/widget/LinearLayout;

.field private g_objRunBtn:Landroid/widget/Button;

.field private g_objScrollView:Landroid/widget/ScrollView;

.field private g_objSubLinearLayout:Landroid/widget/LinearLayout;

.field private g_objTestcheckboxBuild:Landroid/widget/CheckBox;

.field private g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field moretestitemslist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public testBtnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/CSDFunctionG/moretestitems;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

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

    iput-object v0, p0, Lcom/android/CSDFunctionG/moretestitems;->moretestitemslist:Ljava/util/ArrayList;

    .line 33
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    .line 34
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    .line 35
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 36
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mHidecheckBox:Landroid/widget/CheckBox;

    .line 37
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objScrollView:Landroid/widget/ScrollView;

    .line 38
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objAboutBtn:Landroid/widget/Button;

    .line 42
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objRunBtn:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objBackBtn:Landroid/widget/Button;

    .line 44
    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestBtn:Landroid/widget/Button;

    .line 45
    iput v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_iScreenTimeOut:I

    .line 47
    iput v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_iHideBoxCount:I

    .line 48
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/moretestitems;->b_HideBTNCHK:Z

    .line 70
    new-instance v0, Lcom/android/CSDFunctionG/moretestitems$1;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/moretestitems$1;-><init>(Lcom/android/CSDFunctionG/moretestitems;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/moretestitems;->mHandler:Landroid/os/Handler;

    .line 240
    new-instance v0, Lcom/android/CSDFunctionG/moretestitems$2;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/moretestitems$2;-><init>(Lcom/android/CSDFunctionG/moretestitems;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/moretestitems;->cbListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 416
    new-instance v0, Lcom/android/CSDFunctionG/moretestitems$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/moretestitems$3;-><init>(Lcom/android/CSDFunctionG/moretestitems;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/moretestitems;->testBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private ShowDialog()V
    .locals 5

    .prologue
    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, strInfo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 449
    .local v2, strBtnName:Ljava/lang/String;
    const-string v3, "Please go to spacious place for better GPS signal receiving."

    .line 450
    const-string v2, "Yes"

    .line 452
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 454
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 455
    new-instance v4, Lcom/android/CSDFunctionG/moretestitems$4;

    invoke-direct {v4, p0}, Lcom/android/CSDFunctionG/moretestitems$4;-><init>(Lcom/android/CSDFunctionG/moretestitems;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 461
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 462
    return-void
.end method

.method private SpecialButtonCreate()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, iBtnIdOffset:I
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objAboutBtn:Landroid/widget/Button;

    .line 101
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objBackBtn:Landroid/widget/Button;

    .line 102
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objRunBtn:Landroid/widget/Button;

    .line 104
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    .line 105
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 106
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const-string v2, "GSD_itemtest"

    const-string v3, "Set\tButton Name:about"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objAboutBtn:Landroid/widget/Button;

    const-string v3, "About"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objAboutBtn:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objAboutBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setWidth(I)V

    .line 117
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objAboutBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHeight(I)V

    .line 118
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objAboutBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->testBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objAboutBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objRunBtn:Landroid/widget/Button;

    const-string v3, "Run"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objRunBtn:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objRunBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setWidth(I)V

    .line 127
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objRunBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHeight(I)V

    .line 128
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objRunBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->testBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objRunBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objBackBtn:Landroid/widget/Button;

    const-string v3, "Back"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objBackBtn:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objBackBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setWidth(I)V

    .line 137
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objBackBtn:Landroid/widget/Button;

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHeight(I)V

    .line 138
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objBackBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->testBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objBackBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x1a4

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 144
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
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

    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, strcheckboxName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 152
    .local v1, iteratorGrp:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 153
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 154
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 156
    sget-object v4, Lcom/android/CSDFunctionG/moretestitems;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_0

    .line 158
    sget-object v4, Lcom/android/CSDFunctionG/moretestitems;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 159
    const/4 v4, 0x0

    sput-object v4, Lcom/android/CSDFunctionG/moretestitems;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    .line 161
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v4, Lcom/android/CSDFunctionG/moretestitems;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    if-nez v1, :cond_2

    .line 211
    :cond_1
    return-void

    .line 169
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

    .line 170
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, iBtnIdOffset:I
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    .line 174
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    .line 175
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    .line 176
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 177
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #strcheckboxName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 181
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

    .line 182
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/CSDFunctionG/moretestitems;->cbListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 189
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setWidth(I)V

    .line 190
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    sget-object v4, Lcom/android/CSDFunctionG/moretestitems;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #strcheckboxName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 197
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

    .line 198
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/CSDFunctionG/moretestitems;->cbListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 205
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setWidth(I)V

    .line 206
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    sget-object v4, Lcom/android/CSDFunctionG/moretestitems;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objTestcheckboxBuild2:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_3
    iget-object v4, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objSubLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/moretestitems;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/CSDFunctionG/moretestitems;->ShowDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/CSDFunctionG/moretestitems;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/CSDFunctionG/moretestitems;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestBtn:Landroid/widget/Button;

    return-object p1
.end method

.method private getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "strchkboxName"

    .prologue
    .line 236
    sget-object v0, Lcom/android/CSDFunctionG/moretestitems;->g_mMapchkboxGroup:Ljava/util/LinkedHashMap;

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

    .line 214
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 216
    .local v0, win:Landroid/view/Window;
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objScrollView:Landroid/widget/ScrollView;

    .line 217
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    .line 219
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 220
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objScrollView:Landroid/widget/ScrollView;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 230
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/moretestitems;->setContentView(Landroid/view/View;)V

    .line 231
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_objScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setKeepScreenOn(Z)V

    .line 232
    return-void
.end method


# virtual methods
.method public BatrundownTest()V
    .locals 4

    .prologue
    .line 329
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/CSDFunctionG/declare;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 331
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ModeTest"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method public CheckAllchkbox(Z)V
    .locals 5
    .parameter "ischeckedflag"

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, strchkboxName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 272
    .local v0, iteratordescription:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->moretestitemslist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 274
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

    .line 275
    if-nez v0, :cond_1

    .line 288
    :cond_0
    return-void

    .line 280
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #strchkboxName:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 284
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

    .line 285
    invoke-direct {p0, v1}, Lcom/android/CSDFunctionG/moretestitems;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 286
    iget-object v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public Copyright()V
    .locals 2

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/copyright;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method public HWInformation()V
    .locals 4

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$HtcAboutPhoneHardwareInfoActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 311
    return-void
.end method

.method public LineDrawingTest()V
    .locals 4

    .prologue
    .line 339
    const-string v2, "Line\tDrawing\ttest Start\r\n"

    invoke-static {v2}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/CSDFunctionG/touchtest;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "TestMode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 347
    return-void
.end method

.method public Run()V
    .locals 4

    .prologue
    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, strchkboxName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 370
    .local v1, iteratordescription:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 371
    .local v0, it_Checkcount:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->moretestitemslist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->moretestitemslist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    if-nez v0, :cond_1

    .line 415
    :cond_0
    return-void

    .line 378
    :cond_1
    if-eqz v1, :cond_0

    .line 382
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #strchkboxName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 385
    .restart local v2       #strchkboxName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-direct {p0, v2}, Lcom/android/CSDFunctionG/moretestitems;->getchkboxByName(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v3

    iput-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    .line 387
    iget-object v3, p0, Lcom/android/CSDFunctionG/moretestitems;->g_mPressedTestchkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    const-string v3, "Device Information"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 391
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->Systeminfo()V

    .line 392
    :cond_3
    const-string v3, "Software Version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 393
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->SoftwareVer()V

    .line 394
    :cond_4
    const-string v3, "Hardware Information"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 395
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->HWInformation()V

    .line 396
    :cond_5
    const-string v3, "AGPS Test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 397
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/moretestitems;->declarefunction(I)V

    .line 398
    :cond_6
    const-string v3, "Test Log"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 399
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->log()V

    .line 400
    :cond_7
    const-string v3, "Battery Test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 401
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->BatrundownTest()V

    .line 402
    :cond_8
    const-string v3, "Live call Test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 403
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/moretestitems;->declarefunction(I)V

    .line 405
    :cond_9
    const-string v3, "Factory data reset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 406
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/moretestitems;->declarefunction(I)V

    .line 407
    :cond_a
    const-string v3, "Safe mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 408
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/moretestitems;->declarefunction(I)V

    .line 410
    :cond_b
    const-string v3, "Line\tDrawing\ttest (No time-limit)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->LineDrawingTest()V

    goto/16 :goto_0
.end method

.method public SoftwareVer()V
    .locals 4

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$HtcAboutPhoneSoftwareInfoActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public Systeminfo()V
    .locals 4

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$HtcAboutPhoneIdentityActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method

.method public back_MainPage()V
    .locals 2

    .prologue
    .line 351
    const-string v1, "Back to Main page\r\n"

    invoke-static {v1}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/csdfunction;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method public declarefunction(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 359
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/CSDFunctionG/declare;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ModeTest"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 365
    return-void
.end method

.method public log()V
    .locals 2

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/CSDFunctionG/log;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/moretestitems;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 486
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 487
    packed-switch p1, :pswitch_data_0

    .line 497
    :pswitch_0
    return-void

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/android/CSDFunctionG/moretestitems;->initTestView()V

    .line 56
    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->getmoreitemtest()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->moretestitemslist:Ljava/util/ArrayList;

    .line 57
    iget-object v1, p0, Lcom/android/CSDFunctionG/moretestitems;->moretestitemslist:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/CSDFunctionG/moretestitems;->TestCheckboxCreate(Ljava/util/ArrayList;)V

    .line 58
    invoke-direct {p0}, Lcom/android/CSDFunctionG/moretestitems;->SpecialButtonCreate()V

    .line 61
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v3, 0x3e7

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/CSDFunctionG/moretestitems;->g_iScreenTimeOut:I

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "GSD_itemtest"

    const-string v2, "could\tnot\tpersist\tscreen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 479
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_iScreenTimeOut:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 465
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_iScreenTimeOut:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 83
    const-string v0, "GSD_itemtest"

    const-string v1, "onStart ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 91
    const-string v0, "GSD_itemtest"

    const-string v1, "onStop() ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/moretestitems;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/CSDFunctionG/moretestitems;->g_iScreenTimeOut:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    return-void
.end method
