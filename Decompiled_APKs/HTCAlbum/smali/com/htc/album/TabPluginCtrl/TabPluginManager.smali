.class public Lcom/htc/album/TabPluginCtrl/TabPluginManager;
.super Ljava/lang/Object;
.source "TabPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActParent:Landroid/app/Activity;

.field private mCtxParent:Landroid/content/Context;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mTabCount:I

.field mTabInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mCtxParent:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    .line 37
    iput-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    .line 46
    return-void
.end method

.method private getTabInfo(I)Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    .locals 3
    .parameter "nOrder"

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/4 v0, 0x0

    .line 352
    .local v0, nIndex:I
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    if-ge v0, v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mOrder:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    check-cast v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    .line 360
    .restart local v1       #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    :cond_0
    return-object v1

    .line 352
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setTabInfo(ILcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;)V
    .locals 3
    .parameter "nOrder"
    .parameter "tabInfo"

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, tabInfoPrev:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/4 v0, 0x0

    .line 367
    .local v0, nIndex:I
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    if-ge v0, v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mOrder:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #tabInfoPrev:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    check-cast v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    .line 372
    .restart local v1       #tabInfoPrev:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/4 v1, 0x0

    .line 376
    :cond_0
    return-void

    .line 367
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Initialize(Landroid/app/Activity;)V
    .locals 20
    .parameter "actParent"

    .prologue
    .line 62
    const/4 v10, 0x0

    .line 63
    .local v10, nCount:I
    const/4 v11, 0x0

    .line 64
    .local v11, nIndex:I
    const/16 v16, 0x0

    .line 65
    .local v16, tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/4 v13, 0x0

    .line 67
    .local v13, resource:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 69
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    .line 74
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mSharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 82
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, bIsOn:Z
    const/4 v14, 0x0

    .line 90
    .local v14, tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    const/4 v5, 0x0

    .line 92
    .local v5, components:[Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-string v18, "album_tab"

    invoke-static/range {v17 .. v18}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v5

    .line 93
    if-eqz v5, :cond_7

    .line 95
    move-object v2, v5

    .local v2, arr$:[Landroid/content/ComponentName;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move-object v15, v14

    .end local v14           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .local v15, tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    move v12, v11

    .end local v11           #nIndex:I
    .local v12, nIndex:I
    :goto_0
    if-ge v8, v9, :cond_5

    aget-object v4, v2, v8

    .line 99
    .local v4, component:Landroid/content/ComponentName;
    :try_start_0
    new-instance v14, Lcom/htc/opensense/plugin/TabPluginRemote;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0, v4}, Lcom/htc/opensense/plugin/TabPluginRemote;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 122
    .end local v15           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v14       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    :goto_1
    if-nez v14, :cond_2

    move v11, v12

    .line 95
    .end local v12           #nIndex:I
    .restart local v11       #nIndex:I
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object v15, v14

    .end local v14           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v15       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    move v12, v11

    .end local v11           #nIndex:I
    .restart local v12       #nIndex:I
    goto :goto_0

    .line 101
    :catch_0
    move-exception v7

    .line 104
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v14, v15

    .line 120
    .end local v15           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v14       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    goto :goto_1

    .line 106
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v15       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    :catch_1
    move-exception v7

    .line 109
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v14, v15

    .line 120
    .end local v15           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v14       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    goto :goto_1

    .line 111
    .end local v7           #e:Ljava/lang/SecurityException;
    .end local v14           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v15       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    :catch_2
    move-exception v7

    .line 114
    .local v7, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v14, v15

    .line 120
    .end local v15           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v14       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    goto :goto_1

    .line 116
    .end local v7           #e:Ljava/lang/ClassNotFoundException;
    .end local v14           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v15       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    :catch_3
    move-exception v7

    .line 119
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v14, v15

    .end local v15           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v14       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    goto :goto_1

    .line 125
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    sget-boolean v17, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-eqz v17, :cond_3

    invoke-virtual {v14}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0b00af

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    move v11, v12

    .line 126
    .end local v12           #nIndex:I
    .restart local v11       #nIndex:I
    goto :goto_2

    .line 128
    .end local v11           #nIndex:I
    .restart local v12       #nIndex:I
    :cond_3
    new-instance v16, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    .end local v16           #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;-><init>(Lcom/htc/album/TabPluginCtrl/TabPluginManager;)V

    .line 130
    .restart local v16       #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsEnabled:Z

    .line 131
    add-int/lit8 v11, v12, 0x1

    .end local v12           #nIndex:I
    .restart local v11       #nIndex:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mOrder:Ljava/lang/Integer;

    .line 132
    invoke-virtual {v14}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDisplay:Ljava/lang/String;

    .line 133
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsOn:Z

    .line 137
    invoke-virtual {v14}, Lcom/htc/opensense/plugin/TabPluginRemote;->getActivityIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "service_name"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    if-nez v17, :cond_4

    .line 139
    invoke-virtual {v14}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    .line 140
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsFixed:Z

    .line 149
    :goto_3
    :try_start_1
    invoke-virtual {v14}, Lcom/htc/opensense/plugin/TabPluginRemote;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDrawable:[Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 157
    invoke-virtual {v14}, Lcom/htc/opensense/plugin/TabPluginRemote;->getActivityIntent()Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIntent:Landroid/content/Intent;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 144
    :cond_4
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsFixed:Z

    goto :goto_3

    .line 151
    :catch_4
    move-exception v7

    .line 153
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v17, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[HTCAlbum][TabPluginManager][Initialize]: getDrawableSet: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v4           #component:Landroid/content/ComponentName;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #nIndex:I
    .end local v14           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v12       #nIndex:I
    .restart local v15       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_5
    move-object v14, v15

    .end local v15           #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v14       #tab:Lcom/htc/opensense/plugin/TabPluginRemote;
    move v11, v12

    .line 170
    .end local v2           #arr$:[Landroid/content/ComponentName;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #nIndex:I
    .restart local v11       #nIndex:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_6

    .line 172
    sget-object v17, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->LOG_TAG:Ljava/lang/String;

    const-string v18, "[HTCAlbum][TabPluginManager][Initialize] add default device album tab to avoid crash"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v16, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    .end local v16           #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;-><init>(Lcom/htc/album/TabPluginCtrl/TabPluginManager;)V

    .line 176
    .restart local v16       #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsEnabled:Z

    .line 177
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsOn:Z

    .line 178
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsFixed:Z

    .line 179
    add-int/lit8 v12, v11, 0x1

    .end local v11           #nIndex:I
    .restart local v12       #nIndex:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mOrder:Ljava/lang/Integer;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f0b0023

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDisplay:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f0b0023

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    .line 183
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    .line 184
    .local v6, drawables:[Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    const v18, 0x20802a9

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    aput-object v18, v6, v17

    .line 185
    const/16 v17, 0x1

    const v18, 0x20802a8

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    aput-object v18, v6, v17

    .line 186
    const/16 v17, 0x2

    const v18, 0x208038c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    aput-object v18, v6, v17

    .line 188
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDrawable:[Landroid/graphics/drawable/Drawable;

    .line 189
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIntent:Landroid/content/Intent;

    .line 190
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getPluginClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v12

    .line 195
    .end local v6           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v12           #nIndex:I
    .restart local v11       #nIndex:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    .line 201
    return-void

    .line 168
    :cond_7
    sget-object v17, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->LOG_TAG:Ljava/lang/String;

    const-string v18, "[HTCAlbum][TabPluginManager][Initialize] no plugin components were found"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public Initialize2(Landroid/app/Activity;)V
    .locals 1
    .parameter "actParent"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 206
    iput-object p1, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mSharedPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 216
    :cond_1
    return-void
.end method

.method public SyncEnvironmentSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, nIndex:I
    const/4 v0, 0x0

    .line 325
    .local v0, bIsEnable:Z
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    if-ge v1, v3, :cond_1

    .line 327
    iget-object v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-boolean v3, v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsFixed:Z

    if-ne v6, v3, :cond_0

    .line 325
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_0
    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    check-cast v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    .line 336
    .restart local v2       #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    iput-boolean v0, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsEnabled:Z

    .line 337
    sget-object v4, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][TabPluginManager][SyncEnvironmentSettings]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 340
    .end local v2           #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    :cond_1
    return-void
.end method

.method public UpdateTabOnOffState(IZ)V
    .locals 1
    .parameter "nIndex"
    .parameter "bIsOnOff"

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->getTabInfo(I)Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    move-result-object v0

    .line 345
    iput-boolean p2, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsOn:Z

    .line 346
    return-void
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    return v0
.end method

.method public getTabIdentifier(I)Ljava/lang/String;
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->getTabInfo(I)Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTabSpec(I)Lcom/htc/widget/TabSwitchHost$TabSpec;
    .locals 10
    .parameter "nIndex"

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/4 v0, 0x0

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 301
    .local v3, tabSpec:Lcom/htc/widget/TabSwitchHost$TabSpec;
    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mActParent:Landroid/app/Activity;

    check-cast v4, Lcom/htc/widget/TabSwitchActivity;

    invoke-virtual {v4}, Lcom/htc/widget/TabSwitchActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v1

    .line 303
    .local v1, tabHost:Lcom/htc/widget/TabSwitchHost;
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->getTabInfo(I)Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    move-result-object v2

    .line 305
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v4, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 307
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v4, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDisplay:Ljava/lang/String;

    iget-object v6, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget-object v8, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v3

    .line 314
    return-object v3
.end method

.method public isPluginExists(Ljava/lang/String;)Z
    .locals 4
    .parameter "szIdentifier"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, bResult:Z
    const/4 v1, 0x0

    .line 228
    .local v1, nIndex:I
    const/4 v2, 0x0

    .line 230
    .local v2, tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    if-ge v1, v3, :cond_0

    .line 232
    iget-object v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    const/4 v0, 0x1

    .line 238
    :cond_0
    return v0

    .line 230
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isTabEnabled(I)Z
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->getTabInfo(I)Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsEnabled:Z

    return v0
.end method

.method public isTabEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "szIdentifier"

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, bResult:Z
    const/4 v1, 0x0

    .line 249
    .local v1, nIndex:I
    const/4 v2, 0x0

    .line 251
    .local v2, tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    if-ge v1, v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-boolean v0, v3, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsEnabled:Z

    .line 261
    :cond_0
    return v0

    .line 251
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isTabFixed(I)Z
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->getTabInfo(I)Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsFixed:Z

    return v0
.end method

.method public isTabOn(I)Z
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->getTabInfo(I)Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsOn:Z

    return v0
.end method

.method public isTabOn(Ljava/lang/String;)Z
    .locals 4
    .parameter "szIdentifier"

    .prologue
    const/4 v3, 0x0

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, nIndex:I
    const/4 v1, 0x0

    .line 276
    .local v1, tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    if-nez p1, :cond_0

    move v2, v3

    .line 287
    :goto_0
    return v2

    .line 278
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabCount:I

    if-ge v0, v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager;->mTabInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    check-cast v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;

    .line 283
    .restart local v1       #tabInfo:Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
    if-eqz v1, :cond_1

    .line 284
    iget-boolean v2, v1, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsOn:Z

    goto :goto_0

    .line 278
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    .line 287
    goto :goto_0
.end method
