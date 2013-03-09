.class public Lcom/htc/lmw/CustomizeBase;
.super Ljava/lang/Object;
.source "CustomizeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lmw/CustomizeBase$LoadingTime;
    }
.end annotation


# static fields
.field public static final addUpdateMailPrefix:Z

.field public static final loadingTime:Lcom/htc/lmw/CustomizeBase$LoadingTime;

.field private static m_devicesTablet:[S

.field protected static m_stringsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final notificationsEnabled:Z

.field public static final useInflator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f050037

    .line 42
    sget-object v0, Lcom/htc/lmw/CustomizeBase$LoadingTime;->LOAD_BEFORE_CACHE:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    sput-object v0, Lcom/htc/lmw/CustomizeBase;->loadingTime:Lcom/htc/lmw/CustomizeBase$LoadingTime;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/lmw/CustomizeBase;->m_devicesTablet:[S

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    .line 56
    sget-object v0, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    const v1, 0x7f05001f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f05000f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f050010

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    const v1, 0x7f050022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f050024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f050025

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    const v1, 0x7f050026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f05002c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    const v1, 0x7f050027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f05002e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f05002f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    const v1, 0x7f05002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f050030

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f050031

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    const v1, 0x7f05002b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    const v3, 0x7f050032

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f050033

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    const v1, 0x7f050035

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void

    .line 50
    :array_0
    .array-data 0x2
        0x28t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x7ct 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static convertStringId(I)I
    .locals 3
    .parameter "convertId"

    .prologue
    .line 330
    move v0, p0

    .line 331
    .local v0, id:I
    sget-object v1, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-static {}, Lcom/htc/lmw/CustomizeBase;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    sget-object v1, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    sget-object v1, Lcom/htc/lmw/CustomizeBase;->m_stringsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static customizeDialog(Lcom/htc/dialog/HtcAlertDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 85
    return-void
.end method

.method public static getAlphaSortIcon()I
    .locals 1

    .prologue
    .line 233
    const v0, 0x108009c

    return v0
.end method

.method public static getAvailableSpaceStringId()I
    .locals 1

    .prologue
    .line 151
    const v0, 0x7f050020

    invoke-static {v0}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v0

    return v0
.end method

.method public static getListView(Lcom/htc/lmw/AppInfo;Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View;
    .locals 12
    .parameter "appInfo"
    .parameter "convertView"
    .parameter "inflater"
    .parameter "inflateRoot"
    .parameter "mbFormat"
    .parameter "kbFormat"
    .parameter "checkBoxDrawableId"
    .parameter "itemLayoutId"

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 163
    const/4 v6, 0x0

    move/from16 v0, p7

    invoke-virtual {p2, v0, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 165
    .local v5, view:Landroid/view/ViewGroup;
    const v6, 0x202001f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 166
    .local v2, checkBox:Landroid/widget/CheckBox;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 167
    move/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 170
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "list_selector_background"

    const v8, 0x208005e

    invoke-static {v6, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 172
    .local v1, backgroundId:I
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 180
    .end local v1           #backgroundId:I
    :goto_0
    iget-boolean v6, p0, Lcom/htc/lmw/AppInfo;->checked:Z

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    const v6, 0x2020010

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 183
    .local v4, textView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/htc/lmw/AppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const v6, 0x2020014

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #textView:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 186
    .restart local v4       #textView:Landroid/widget/TextView;
    iget-wide v6, p0, Lcom/htc/lmw/AppInfo;->size:J

    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 187
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/htc/lmw/AppInfo;->size:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p5

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :goto_1
    const v6, 0x202001a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 192
    .local v3, imageView:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/htc/lmw/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-object v5

    .end local v2           #checkBox:Landroid/widget/CheckBox;
    .end local v3           #imageView:Landroid/widget/ImageView;
    .end local v4           #textView:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/ViewGroup;
    :cond_0
    move-object v5, p1

    .line 176
    check-cast v5, Landroid/view/ViewGroup;

    .line 177
    .restart local v5       #view:Landroid/view/ViewGroup;
    const v6, 0x202001f

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .restart local v2       #checkBox:Landroid/widget/CheckBox;
    goto :goto_0

    .line 189
    .restart local v4       #textView:Landroid/widget/TextView;
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/htc/lmw/AppInfo;->size:J

    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p4

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static getSizeSortIcon()I
    .locals 1

    .prologue
    .line 238
    const v0, 0x108009d

    return v0
.end method

.method private static getWizardBackButton(Landroid/app/Activity;I)Landroid/widget/Button;
    .locals 5
    .parameter "activity"
    .parameter "step"

    .prologue
    const v4, 0x7f050001

    const v1, 0x2020001

    const/16 v2, 0x8

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, button:Landroid/widget/Button;
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 246
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 247
    .restart local v0       #button:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 248
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    if-lez p1, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 253
    .restart local v0       #button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 255
    invoke-static {v4}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 256
    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 256
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static getWizardNextButton(Landroid/app/Activity;I)Landroid/widget/Button;
    .locals 6
    .parameter "activity"
    .parameter "step"

    .prologue
    const v5, 0x7f050004

    const v2, 0x2020003

    const v3, 0x2020001

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, button:Landroid/widget/Button;
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 269
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 270
    .restart local v0       #button:Landroid/widget/Button;
    const v2, 0x7f050003

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    move-object v1, v0

    .line 288
    .end local v0           #button:Landroid/widget/Button;
    .local v1, button:Landroid/widget/Button;
    :goto_0
    return-object v1

    .line 273
    .end local v1           #button:Landroid/widget/Button;
    .restart local v0       #button:Landroid/widget/Button;
    :cond_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 275
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 277
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 278
    .restart local v0       #button:Landroid/widget/Button;
    invoke-static {v5}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    move-object v1, v0

    .line 279
    .end local v0           #button:Landroid/widget/Button;
    .restart local v1       #button:Landroid/widget/Button;
    goto :goto_0

    .line 283
    .end local v1           #button:Landroid/widget/Button;
    .restart local v0       #button:Landroid/widget/Button;
    :cond_1
    if-lez p1, :cond_3

    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 284
    .restart local v0       #button:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 286
    sget-object v2, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v2, :cond_4

    invoke-static {v5}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    :cond_2
    move-object v1, v0

    .line 288
    .end local v0           #button:Landroid/widget/Button;
    .restart local v1       #button:Landroid/widget/Button;
    goto :goto_0

    .end local v1           #button:Landroid/widget/Button;
    .restart local v0       #button:Landroid/widget/Button;
    :cond_3
    move v2, v3

    .line 283
    goto :goto_1

    .line 286
    :cond_4
    const v2, 0x7f050002

    invoke-static {v2}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v2

    goto :goto_2
.end method

.method public static invalidateMenu(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 90
    return-void
.end method

.method public static isTablet()Z
    .locals 5

    .prologue
    .line 317
    sget-object v0, Lcom/htc/lmw/CustomizeBase;->m_devicesTablet:[S

    .local v0, arr$:[S
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-short v1, v0, v2

    .line 319
    .local v1, flag:S
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v4, v1, :cond_0

    .line 321
    const/4 v4, 0x1

    .line 325
    .end local v1           #flag:S
    :goto_1
    return v4

    .line 317
    .restart local v1       #flag:S
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v1           #flag:S
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static raiseNotification(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 203
    invoke-static {p0, v9}, Lcom/htc/lmw/Settings;->setNotificationMustBeActive(Landroid/content/Context;Z)V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05001a

    invoke-static {v7}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, title:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05001b

    invoke-static {v7}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, text:Ljava/lang/String;
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05001c

    invoke-static {v7}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05001d

    invoke-static {v7}, Lcom/htc/lmw/CustomizeBase;->convertStringId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    :cond_0
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 215
    .local v1, manager:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    const v6, 0x7f020004

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v6, v4, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 217
    .local v2, notification:Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/htc/lmw/MainActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v3, notificationIntent:Landroid/content/Intent;
    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p0, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 219
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, v5, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 221
    invoke-virtual {v1, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 222
    return-void
.end method

.method public static removeNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 226
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/lmw/Settings;->setNotificationMustBeActive(Landroid/content/Context;Z)V

    .line 227
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 228
    .local v0, manager:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 229
    return-void
.end method

.method public static setBackButtonCallback(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "activity"
    .parameter "step"
    .parameter "callback"

    .prologue
    .line 300
    invoke-static {p0, p1}, Lcom/htc/lmw/CustomizeBase;->getWizardBackButton(Landroid/app/Activity;I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/htc/lmw/CustomizeBase;->setButtonCallback(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 301
    return-void
.end method

.method private static setButtonCallback(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "button"
    .parameter "callback"

    .prologue
    .line 294
    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_0
    return-void
.end method

.method public static setItemEnabled(Lcom/htc/lmw/steps/MailAndMessages;IZ)V
    .locals 4
    .parameter "activity"
    .parameter "itemId"
    .parameter "enabled"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/MailAndMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, item:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    invoke-virtual {v0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 118
    const v1, 0x2020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    const v1, 0x2020013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    const v1, 0x2020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 121
    const v1, 0x2020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 122
    const v1, 0x202001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v1, "common_more_view"

    const v3, 0x2080065

    invoke-static {p0, v1, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    return-void

    .line 122
    :cond_0
    const-string v1, "common_more_disabled"

    const v3, 0x20804a7

    invoke-static {p0, v1, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static setItemHint(Lcom/htc/lmw/steps/MailAndMessages;ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "activity"
    .parameter "itemId"
    .parameter "hint"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/MailAndMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, button:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 107
    const v2, 0x2020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, txt2x1:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .end local v1           #txt2x1:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public static setItemText(Lcom/htc/lmw/steps/MailAndMessages;ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "activity"
    .parameter "itemId"
    .parameter "text"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/MailAndMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, button:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 97
    const v2, 0x2020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    .local v1, txt1x1:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .end local v1           #txt1x1:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public static setNextButtonCallback(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "activity"
    .parameter "step"
    .parameter "callback"

    .prologue
    .line 305
    invoke-static {p0, p1}, Lcom/htc/lmw/CustomizeBase;->getWizardNextButton(Landroid/app/Activity;I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/htc/lmw/CustomizeBase;->setButtonCallback(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method

.method public static setNextButtonEnabled(Landroid/app/Activity;ZI)V
    .locals 1
    .parameter "activity"
    .parameter "enabled"
    .parameter "step"

    .prologue
    .line 310
    invoke-static {p0, p2}, Lcom/htc/lmw/CustomizeBase;->getWizardNextButton(Landroid/app/Activity;I)Landroid/widget/Button;

    move-result-object v0

    .line 311
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public static setupMoveToSdCardTitle(Lcom/htc/lmw/steps/MoveToSdCard;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 343
    return-void
.end method

.method public static setupRadioItem(Lcom/htc/lmw/steps/CleanCache;IIIZI)V
    .locals 6
    .parameter "activity"
    .parameter "radioItemId"
    .parameter "text1Id"
    .parameter "text2Id"
    .parameter "checked"
    .parameter "backgroundId"

    .prologue
    const/4 v4, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/htc/lmw/steps/CleanCache;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, item:Landroid/view/View;
    invoke-virtual {v0, p5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 134
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 135
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v4, 0x2020010

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 138
    .local v2, text1View:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    const v4, 0x2020014

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 140
    .local v3, text2View:Landroid/widget/TextView;
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    const v4, 0x20200fc

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 143
    .local v1, radioButton:Landroid/widget/RadioButton;
    invoke-virtual {v1, p4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 144
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 146
    const-string v4, "common_radiobutton"

    const v5, 0x20804c5

    invoke-static {p0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 147
    return-void
.end method

.method public static wizardActivityOnCreate(Landroid/app/Activity;I)V
    .locals 4
    .parameter "activity"
    .parameter "step"

    .prologue
    const v3, 0x2080009

    .line 70
    invoke-static {p0, p1}, Lcom/htc/lmw/CustomizeBase;->getWizardBackButton(Landroid/app/Activity;I)Landroid/widget/Button;

    move-result-object v0

    .line 71
    .local v0, backButton:Landroid/widget/Button;
    invoke-static {p0, p1}, Lcom/htc/lmw/CustomizeBase;->getWizardNextButton(Landroid/app/Activity;I)Landroid/widget/Button;

    move-result-object v1

    .line 73
    .local v1, nextButton:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 74
    const-string v2, "common_b_button"

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 76
    :cond_0
    if-eqz v0, :cond_1

    .line 77
    const-string v2, "common_b_button"

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    :cond_1
    return-void
.end method
