.class public Lcom/htc/android/htcime/tools/HTC_IME_Test;
.super Landroid/app/ListActivity;
.source "HTC_IME_Test.java"


# static fields
.field public static final COUNTER_THRESHOLD:I = 0x1

.field public static final HTC_IME_TEST_DIR:Ljava/lang/String; = "IME_Test"

.field private static final MENU_CALIBRATION:I = 0x2

.field private static final MENU_DENSITY:I = 0x7

.field private static final MENU_DEWATERMARK:I = 0x4

.field private static final MENU_DHA:I = 0xa

.field private static final MENU_DHA_DEBUG:I = 0xc

.field private static final MENU_DHA_HINT:I = 0xb

.field private static final MENU_DUMP_SP:I = 0x8

.field private static final MENU_ENABLE_HWR:I = 0x6

.field private static final MENU_FACTORYMODE:I = 0x3

.field private static final MENU_POINTER_LOCATION:I = 0x1

.field private static final MENU_QUERY_CID:I = 0x5

.field private static final MENU_VIBRATION_PERIOD:I = 0x9

.field private static final TAG:Ljava/lang/String; = "HTC_IME_Test"

.field public static mSecretOptionCounter:I

.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/htc/android/htcime/tools/HTC_IME_Test$1;

    invoke-direct {v0}, Lcom/htc/android/htcime/tools/HTC_IME_Test$1;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->sDisplayNameComparator:Ljava/util/Comparator;

    .line 170
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->mSecretOptionCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected activityIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "pkg"
    .parameter "componentName"

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, result:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    return-object v0
.end method

.method protected addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v0, temp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "intent"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method protected browseIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "path"

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, result:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/htcime/tools/HTC_IME_Test;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    const-string v1, "com.htc.api.Path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    return-object v0
.end method

.method protected getData(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .parameter "prefix"

    .prologue
    .line 70
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v10, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map;>;"
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    const/4 v15, 0x0

    invoke-direct {v9, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .local v9, mainIntent:Landroid/content/Intent;
    const-string v14, "htc.intent.category.HTC_IME_Test"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 76
    .local v12, pm:Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    invoke-virtual {v12, v9, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 78
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_0

    .line 111
    :goto_0
    return-object v10

    .line 81
    :cond_0
    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v13, 0x0

    .line 84
    .local v13, prefixPath:[Ljava/lang/String;
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 85
    .local v7, len:I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v1, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v7, :cond_9

    .line 88
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 89
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 90
    .local v6, labelSeq:Ljava/lang/CharSequence;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, label:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 93
    :cond_1
    const-string v14, "/"

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, labelPath:[Ljava/lang/String;
    if-nez v13, :cond_5

    const/4 v14, 0x0

    aget-object v11, v5, v14

    .line 96
    .local v11, nextLabel:Ljava/lang/String;
    :goto_4
    if-eqz v13, :cond_6

    array-length v14, v13

    :goto_5
    array-length v15, v5

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_7

    .line 97
    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->activityIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v14}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V

    .line 87
    .end local v5           #labelPath:[Ljava/lang/String;
    .end local v11           #nextLabel:Ljava/lang/String;
    :cond_2
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 82
    .end local v1           #entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2           #i:I
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #label:Ljava/lang/String;
    .end local v6           #labelSeq:Ljava/lang/CharSequence;
    .end local v7           #len:I
    .end local v13           #prefixPath:[Ljava/lang/String;
    :cond_3
    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .restart local v13       #prefixPath:[Ljava/lang/String;
    goto :goto_1

    .line 90
    .restart local v1       #entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v2       #i:I
    .restart local v3       #info:Landroid/content/pm/ResolveInfo;
    .restart local v6       #labelSeq:Ljava/lang/CharSequence;
    .restart local v7       #len:I
    :cond_4
    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_3

    .line 94
    .restart local v4       #label:Ljava/lang/String;
    .restart local v5       #labelPath:[Ljava/lang/String;
    :cond_5
    array-length v14, v13

    aget-object v11, v5, v14

    goto :goto_4

    .line 96
    .restart local v11       #nextLabel:Ljava/lang/String;
    :cond_6
    const/4 v14, 0x0

    goto :goto_5

    .line 101
    :cond_7
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    .line 102
    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v14, v11

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->browseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v14}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;)V

    .line 103
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v1, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 102
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    .line 109
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #labelPath:[Ljava/lang/String;
    .end local v6           #labelSeq:Ljava/lang/CharSequence;
    .end local v11           #nextLabel:Ljava/lang/String;
    :cond_9
    sget-object v14, Lcom/htc/android/htcime/tools/HTC_IME_Test;->sDisplayNameComparator:Ljava/util/Comparator;

    invoke-static {v10, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.htc.api.Path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, path:Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, ""

    .line 57
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const v3, 0x1090003

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v8

    new-array v5, v7, [I

    const v1, 0x1020014

    aput v1, v5, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 194
    const v0, 0x7f0902de

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 195
    const/4 v0, 0x2

    const v1, 0x7f0902df

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 196
    const/4 v0, 0x3

    const v1, 0x7f0902e0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 197
    const/4 v0, 0x5

    const v1, 0x7f0902e2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 198
    const/4 v0, 0x7

    const v1, 0x7f0902e4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 199
    const/16 v0, 0x8

    const v1, 0x7f0902e5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 200
    const/16 v0, 0x9

    const v1, 0x7f0902e6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 201
    const/16 v0, 0xa

    const-string v1, "DHA"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 202
    sget v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->mSecretOptionCounter:I

    if-le v0, v3, :cond_0

    .line 203
    const/4 v0, 0x4

    const v1, 0x7f0902e1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 204
    const/4 v0, 0x6

    const v1, 0x7f0902e3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 205
    const/16 v0, 0xb

    const-string v1, "Show DHA Hint"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 206
    const/16 v0, 0xc

    const-string v1, "Show DHA Debug Log"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 209
    :cond_0
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 175
    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    .line 176
    :cond_0
    sget v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->mSecretOptionCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->mSecretOptionCounter:I

    .line 177
    sget v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->mSecretOptionCounter:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 178
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->mSecretOptionCounter:I

    .line 179
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Exit secret mode."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->finish()V

    .line 187
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 182
    :cond_2
    sget v0, Lcom/htc/android/htcime/tools/HTC_IME_Test;->mSecretOptionCounter:I

    if-le v0, v2, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Restart IME Test to enter secret mode."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->finish()V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 146
    .local v2, orientation:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 147
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->setRequestedOrientation(I)V

    .line 151
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 152
    .local v1, map:Ljava/util/Map;
    const-string v3, "intent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "htc.intent.category.HTC_IME_Test"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void

    .line 149
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #map:Ljava/util/Map;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 52
    .parameter "item"

    .prologue
    .line 214
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v24

    .line 215
    .local v24, id:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    .line 216
    .local v8, context:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 217
    .local v37, r:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 218
    .local v9, cr:Landroid/content/ContentResolver;
    const/16 v28, 0x0

    .line 219
    .local v28, intent:Landroid/content/Intent;
    const/16 v19, 0x0

    .line 220
    .local v19, dialog:Landroid/app/AlertDialog;
    const-string v7, ""

    .line 222
    .local v7, cid:Ljava/lang/String;
    packed-switch v24, :pswitch_data_0

    .line 436
    :goto_0
    const/16 v49, 0x1

    return v49

    .line 224
    :pswitch_0
    :try_start_0
    const-string v49, "pointer_location"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 225
    .local v10, curMode:I
    const-string v50, "pointer_location"

    if-nez v10, :cond_0

    const/16 v49, 0x1

    :goto_1
    move-object/from16 v0, v50

    move/from16 v1, v49

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    new-instance v50, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Switch pointer location mode to "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    if-nez v10, :cond_1

    const-string v49, "ON"

    :goto_2
    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 229
    const-string v50, "HTC_IME_Test"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "POINTER_LOCATION, curMode="

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    if-nez v10, :cond_2

    const-string v49, "ON"

    :goto_3
    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v10           #curMode:I
    :catch_0
    move-exception v20

    .line 432
    .local v20, e:Ljava/lang/Exception;
    :goto_4
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Exception: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-static {v8, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    .line 433
    const-string v49, "HTC_IME_Test"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Exception: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 225
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v10       #curMode:I
    :cond_0
    const/16 v49, 0x0

    goto/16 :goto_1

    .line 226
    :cond_1
    :try_start_1
    const-string v49, "OFF"

    goto/16 :goto_2

    .line 229
    :cond_2
    const-string v49, "OFF"

    goto :goto_3

    .line 233
    .end local v10           #curMode:I
    :pswitch_1
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .end local v28           #intent:Landroid/content/Intent;
    .local v29, intent:Landroid/content/Intent;
    :try_start_2
    const-string v49, "com.htc.android.htcime"

    const-string v50, "com.htc.android.htcime.tools.Calibration"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v28, v29

    .line 236
    .end local v29           #intent:Landroid/content/Intent;
    .restart local v28       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 239
    :pswitch_2
    :try_start_3
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 240
    .end local v28           #intent:Landroid/content/Intent;
    .restart local v29       #intent:Landroid/content/Intent;
    :try_start_4
    const-string v49, "com.htc.android.htcime"

    const-string v50, "com.htc.android.htcime.settings.HTCIMEFactoryMode"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v28, v29

    .line 242
    .end local v29           #intent:Landroid/content/Intent;
    .restart local v28       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 245
    :pswitch_3
    :try_start_5
    const-string v35, "com.htc.android.htcime"

    .line 247
    .local v35, packagePath:Ljava/lang/String;
    const-string v22, "system@framework@services.jar@classes.dex"

    .line 250
    .local v22, filename:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    const-string v49, "/data/data/com.htc.android.htcime/system@framework@services.jar@classes.dex"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v21, f:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v49

    if-nez v49, :cond_3

    .line 252
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    .line 254
    :cond_3
    new-instance v3, Ljava/io/FileInputStream;

    const-string v49, "/data/dalvik-cache/system@framework@services.jar@classes.dex"

    move-object/from16 v0, v49

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 255
    .local v3, br:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 256
    .local v6, bw:Ljava/io/FileOutputStream;
    const v49, 0x8000

    move/from16 v0, v49

    new-array v4, v0, [B

    .line 257
    .local v4, buf:[B
    const/16 v47, 0x0

    .line 258
    .local v47, total:I
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v31

    .line 260
    .local v31, len:I
    :goto_5
    const/16 v49, -0x1

    move/from16 v0, v49

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    .line 261
    add-int v47, v47, v31

    .line 262
    const/high16 v49, 0x10

    move/from16 v0, v47

    move/from16 v1, v49

    if-ge v0, v1, :cond_4

    .line 263
    const/16 v49, 0x0

    move/from16 v0, v49

    move/from16 v1, v31

    invoke-virtual {v6, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 285
    :goto_6
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v31

    goto :goto_5

    .line 265
    :cond_4
    new-instance v46, Ljava/lang/String;

    const/16 v49, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v49

    move/from16 v2, v31

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 266
    .local v46, tmp:Ljava/lang/String;
    const-string v49, "com/android/server/ShowWatermarkService"

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 267
    .local v26, idx1:I
    const-string v49, "com.android.server.ShowWatermarkService"

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    .line 268
    .local v27, idx2:I
    const/16 v49, -0x1

    move/from16 v0, v26

    move/from16 v1, v49

    if-ne v0, v1, :cond_5

    const/16 v49, -0x1

    move/from16 v0, v27

    move/from16 v1, v49

    if-eq v0, v1, :cond_7

    .line 269
    :cond_5
    const/16 v49, -0x1

    move/from16 v0, v26

    move/from16 v1, v49

    if-eq v0, v1, :cond_6

    move/from16 v25, v26

    .line 270
    .local v25, idx:I
    :goto_7
    const/16 v49, 0x0

    move/from16 v0, v49

    move/from16 v1, v25

    invoke-virtual {v6, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 271
    const-string v49, "cmm.android.server.ShowWatermarkService"

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->getBytes()[B

    move-result-object v38

    .line 272
    .local v38, replace:[B
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v39, v0

    .line 273
    .local v39, replace_len:I
    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 274
    add-int v49, v25, v39

    sub-int v50, v31, v25

    sub-int v50, v50, v39

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v6, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 275
    const-string v49, "HTC_IME_Test"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "DEWATERMARK, find! idx1="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, ",idx2="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v25           #idx:I
    .end local v38           #replace:[B
    .end local v39           #replace_len:I
    :cond_6
    move/from16 v25, v27

    .line 269
    goto :goto_7

    .line 283
    :cond_7
    const/16 v49, 0x0

    move/from16 v0, v49

    move/from16 v1, v31

    invoke-virtual {v6, v4, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_6

    .line 287
    .end local v26           #idx1:I
    .end local v27           #idx2:I
    .end local v46           #tmp:Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 288
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 289
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 292
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v49

    const-string v50, "su"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v33

    .line 293
    .local v33, p:Ljava/lang/Process;
    new-instance v34, Ljava/io/DataOutputStream;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v49

    move-object/from16 v0, v34

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 294
    .local v34, pOut:Ljava/io/DataOutputStream;
    const-string v49, "chmod 644 /data/data/com.htc.android.htcime/system@framework@services.jar@classes.dex\nchown system.system /data/data/com.htc.android.htcime/system@framework@services.jar@classes.dex\nmv /data/data/com.htc.android.htcime/system@framework@services.jar@classes.dex /data/dalvik-cache/\nexit\n"

    move-object/from16 v0, v34

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {v34 .. v34}, Ljava/io/DataOutputStream;->flush()V

    .line 299
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Process;->waitFor()I

    .line 301
    new-instance v49, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v50, "Please reboot device manually.\nDo factory reset if any error occurs."

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 304
    const-string v49, "HTC_IME_Test"

    const-string v50, "DEWATERMARK done"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    .end local v3           #br:Ljava/io/FileInputStream;
    .end local v4           #buf:[B
    .end local v6           #bw:Ljava/io/FileOutputStream;
    .end local v21           #f:Ljava/io/File;
    .end local v22           #filename:Ljava/lang/String;
    .end local v31           #len:I
    .end local v33           #p:Ljava/lang/Process;
    .end local v34           #pOut:Ljava/io/DataOutputStream;
    .end local v35           #packagePath:Ljava/lang/String;
    .end local v47           #total:I
    :pswitch_4
    const-string v49, "ro.cid"

    const-string v50, "00000000"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 309
    new-instance v49, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "CID: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 312
    goto/16 :goto_0

    .line 315
    :pswitch_5
    const-string v49, "ro.cid"

    const-string v50, "00000000"

    invoke-static/range {v49 .. v50}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 316
    const-string v32, "For super CID only."

    .line 317
    .local v32, msg:Ljava/lang/String;
    const-string v49, "11111111"

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_9

    .line 318
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v43

    .line 319
    .local v43, sp:Landroid/content/SharedPreferences;
    const-string v49, "keyboard_ss_sips"

    const/16 v50, -0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v42

    .line 320
    .local v42, sip:I
    const/16 v49, -0x1

    move/from16 v0, v42

    move/from16 v1, v49

    if-ne v0, v1, :cond_a

    .line 321
    const-string v32, "Fail."

    .line 328
    .end local v42           #sip:I
    .end local v43           #sp:Landroid/content/SharedPreferences;
    :cond_9
    :goto_8
    new-instance v49, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 331
    const-string v49, "HTC_IME_Test"

    const-string v50, "ENABLE_HWR done"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    .restart local v42       #sip:I
    .restart local v43       #sp:Landroid/content/SharedPreferences;
    :cond_a
    or-int/lit8 v42, v42, 0x2

    .line 324
    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v49

    const-string v50, "keyboard_ss_sips"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    const-string v32, "Done."

    goto :goto_8

    .line 335
    .end local v32           #msg:Ljava/lang/String;
    .end local v42           #sip:I
    .end local v43           #sp:Landroid/content/SharedPreferences;
    :pswitch_6
    const v49, 0x7f0a006a

    move-object/from16 v0, v37

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v41

    .line 336
    .local v41, screenSize:I
    const v49, 0x7f0a0063

    move-object/from16 v0, v37

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v40

    .line 337
    .local v40, screenDensity:I
    const-string v45, ""

    .line 338
    .local v45, strSize:Ljava/lang/String;
    packed-switch v41, :pswitch_data_1

    .line 352
    :goto_9
    :pswitch_7
    const-string v44, ""

    .line 353
    .local v44, strDensity:Ljava/lang/String;
    packed-switch v40, :pswitch_data_2

    .line 367
    :goto_a
    new-instance v49, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 370
    goto/16 :goto_0

    .line 340
    .end local v44           #strDensity:Ljava/lang/String;
    :pswitch_8
    const-string v45, "small-"

    .line 341
    goto :goto_9

    .line 345
    :pswitch_9
    const-string v45, "large-"

    .line 346
    goto :goto_9

    .line 348
    :pswitch_a
    const-string v45, "xlarge-"

    goto :goto_9

    .line 355
    .restart local v44       #strDensity:Ljava/lang/String;
    :pswitch_b
    const-string v44, "ldpi"

    .line 356
    goto :goto_a

    .line 358
    :pswitch_c
    const-string v44, "mdpi"

    .line 359
    goto :goto_a

    .line 361
    :pswitch_d
    const-string v44, "hdpi"

    .line 362
    goto :goto_a

    .line 364
    :pswitch_e
    const-string v44, "xhdpi"

    goto :goto_a

    .line 373
    .end local v40           #screenDensity:I
    .end local v41           #screenSize:I
    .end local v44           #strDensity:Ljava/lang/String;
    .end local v45           #strSize:Ljava/lang/String;
    :pswitch_f
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v43

    .line 374
    .restart local v43       #sp:Landroid/content/SharedPreferences;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v49

    const-string v50, "IME_Test"

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    .local v12, dataDir:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 376
    new-instance v21, Ljava/io/File;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "/IME_SharedPreferences_dump.txt"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v21       #f:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v49

    if-nez v49, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    .line 379
    :cond_b
    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    .line 380
    .local v11, data:Ljava/util/Map;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v49, Ljava/io/FileWriter;

    move-object/from16 v0, v49

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v49

    invoke-direct {v5, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 381
    .local v5, buw:Ljava/io/BufferedWriter;
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    .line 382
    .local v30, key:Ljava/lang/Object;
    move-object/from16 v0, v30

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    .line 383
    .local v48, value:Ljava/lang/Object;
    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "\n"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_b

    .line 385
    .end local v30           #key:Ljava/lang/Object;
    .end local v48           #value:Ljava/lang/Object;
    :cond_c
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 386
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 388
    new-instance v49, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "File saved to "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 391
    const-string v49, "HTC_IME_Test"

    const-string v50, "DUMP_SP done"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 395
    .end local v5           #buw:Ljava/io/BufferedWriter;
    .end local v11           #data:Ljava/util/Map;
    .end local v12           #dataDir:Ljava/io/File;
    .end local v21           #f:Ljava/io/File;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v43           #sp:Landroid/content/SharedPreferences;
    :pswitch_10
    const v49, 0x7f0a0005

    move-object/from16 v0, v37

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v49

    invoke-static/range {v49 .. v49}, Lcom/htc/android/htcime/util/VibrationUtil;->getDeviceVibrationMS(I)I

    move-result v36

    .line 396
    .local v36, period:I
    new-instance v49, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "IME vibration period: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string v51, "ms"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 399
    goto/16 :goto_0

    .line 402
    .end local v36           #period:I
    :pswitch_11
    const-string v18, "DHA_Switch"

    .line 403
    .local v18, dha_switch:Ljava/lang/String;
    const/16 v49, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v49

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 404
    .local v15, dhaMode:I
    if-nez v15, :cond_d

    const/16 v49, 0x1

    :goto_c
    move-object/from16 v0, v18

    move/from16 v1, v49

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    new-instance v50, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Switch DHA mode to "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    if-nez v15, :cond_e

    const-string v49, "ON"

    :goto_d
    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 408
    const-string v50, "HTC_IME_Test"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "dha_switch, curMode="

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    if-nez v15, :cond_f

    const-string v49, "ON"

    :goto_e
    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 404
    :cond_d
    const/16 v49, 0x0

    goto :goto_c

    .line 405
    :cond_e
    const-string v49, "OFF"

    goto :goto_d

    .line 408
    :cond_f
    const-string v49, "OFF"

    goto :goto_e

    .line 412
    .end local v15           #dhaMode:I
    .end local v18           #dha_switch:Ljava/lang/String;
    :pswitch_12
    const-string v17, "DHA_Hint"

    .line 413
    .local v17, dha_hint:Ljava/lang/String;
    const-string v49, "DHA_Hint"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 414
    .local v14, dhaHintMode:I
    const-string v50, "DHA_Hint"

    if-nez v14, :cond_10

    const/16 v49, 0x1

    :goto_f
    move-object/from16 v0, v50

    move/from16 v1, v49

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    new-instance v50, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Switch DHA Hint mode to "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    if-nez v14, :cond_11

    const-string v49, "ON"

    :goto_10
    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 418
    const-string v50, "HTC_IME_Test"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "dha_hint, curMode="

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    if-nez v14, :cond_12

    const-string v49, "ON"

    :goto_11
    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_10
    const/16 v49, 0x0

    goto :goto_f

    .line 415
    :cond_11
    const-string v49, "OFF"

    goto :goto_10

    .line 418
    :cond_12
    const-string v49, "OFF"

    goto :goto_11

    .line 422
    .end local v14           #dhaHintMode:I
    .end local v17           #dha_hint:Ljava/lang/String;
    :pswitch_13
    const-string v16, "DD"

    .line 423
    .local v16, dha_debug:Ljava/lang/String;
    const-string v49, "DD"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 424
    .local v13, dhaDebugMode:I
    const-string v50, "DD"

    if-nez v13, :cond_13

    const/16 v49, 0x1

    :goto_12
    move-object/from16 v0, v50

    move/from16 v1, v49

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    new-instance v50, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "Switch DHA Debug mode to "

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    if-nez v13, :cond_14

    const-string v49, "ON"

    :goto_13
    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v19

    .line 428
    const-string v50, "HTC_IME_Test"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v51, "dha_debug, curMode="

    move-object/from16 v0, v49

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    if-nez v13, :cond_15

    const-string v49, "ON"

    :goto_14
    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    :cond_13
    const/16 v49, 0x0

    goto :goto_12

    .line 425
    :cond_14
    const-string v49, "OFF"

    goto :goto_13

    .line 428
    :cond_15
    const-string v49, "OFF"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_14

    .line 431
    .end local v13           #dhaDebugMode:I
    .end local v16           #dha_debug:Ljava/lang/String;
    .end local v28           #intent:Landroid/content/Intent;
    .restart local v29       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v20

    move-object/from16 v28, v29

    .end local v29           #intent:Landroid/content/Intent;
    .restart local v28       #intent:Landroid/content/Intent;
    goto/16 :goto_4

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 338
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 353
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/HTC_IME_Test;->setRequestedOrientation(I)V

    .line 66
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 67
    return-void
.end method
