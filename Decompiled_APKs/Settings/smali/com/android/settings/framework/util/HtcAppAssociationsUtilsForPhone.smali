.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtilsForPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone$IfActionType;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final LOG_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtilsForPhoneView (Settings)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private getIntentFilter(I)Landroid/content/IntentFilter;
    .locals 2
    .parameter "actionType"

    .prologue
    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v0, filter:Landroid/content/IntentFilter;
    packed-switch p1, :pswitch_data_0

    .line 364
    const/4 v0, 0x0

    .line 367
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-object v0

    .line 327
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :pswitch_0
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 328
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_1
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 334
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 335
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :pswitch_2
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 341
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_3
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 347
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :pswitch_4
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 352
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 353
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :pswitch_5
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 359
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 360
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIntentList(ILjava/util/List;)Z
    .locals 2
    .parameter "actionType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 284
    if-nez p2, :cond_0

    .line 319
    :goto_0
    return v0

    .line 290
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 309
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIntentMatch(I)I
    .locals 2
    .parameter "actionType"

    .prologue
    const/high16 v0, 0x20

    const/high16 v1, 0x10

    .line 371
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 385
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 382
    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryActivities(Landroid/content/Context;I)Ljava/util/List;
    .locals 17
    .parameter "context"
    .parameter "actionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v5, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 54
    .local v12, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 69
    .local v3, bGetList:Z
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->getIntentList(ILjava/util/List;)Z

    move-result v3

    .line 72
    if-nez v3, :cond_0

    .line 73
    const/4 v9, 0x0

    .line 140
    :goto_0
    return-object v9

    .line 78
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v9, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    .line 82
    .local v14, size:I
    :goto_1
    if-ge v4, v14, :cond_5

    .line 85
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    const v16, 0x10040

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 98
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v11, 0x0

    .line 99
    .local v11, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 100
    .local v10, outputPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 102
    .local v2, bFind:Z
    const/4 v6, 0x0

    .line 103
    .local v6, j:I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 109
    const/4 v7, 0x0

    .line 110
    .local v7, k:I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_1

    .line 113
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 115
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 116
    const/4 v2, 0x1

    .line 121
    :cond_1
    if-nez v2, :cond_2

    .line 122
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 111
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 83
    .end local v7           #k:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    .end local v2           #bFind:Z
    .end local v6           #j:I
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #outputPackageName:Ljava/lang/String;
    .end local v11           #packageName:Ljava/lang/String;
    :cond_5
    new-instance v13, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 130
    .local v13, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v9, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter
    .parameter "preferredComponentName"
    .parameter "actionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p3, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 183
    .local v7, size:I
    new-array v2, v7, [Landroid/content/ComponentName;

    .line 185
    .local v2, components:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 186
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 187
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .local v6, queryComponentName:Landroid/content/ComponentName;
    aput-object v6, v2, v4

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v6           #queryComponentName:Landroid/content/ComponentName;
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->getIntentFilter(I)Landroid/content/IntentFilter;

    move-result-object v3

    .line 197
    .local v3, filter:Landroid/content/IntentFilter;
    invoke-direct {p0, p4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->getIntentMatch(I)I

    move-result v5

    .line 214
    .local v5, match:I
    if-eqz v3, :cond_0

    .line 218
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 221
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3, v5, v2, v1}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_0
.end method


# virtual methods
.method public setPreferredActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "preferredComponentName"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, queryList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 152
    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 155
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_1

    .line 158
    invoke-direct {p0, p1, v0, p2, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 159
    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 162
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_2

    .line 165
    invoke-direct {p0, p1, v0, p2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 166
    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    .line 168
    :cond_2
    return-void
.end method
