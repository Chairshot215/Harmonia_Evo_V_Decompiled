.class public Lcom/htc/opensense/plugin/TabPluginHelper;
.super Ljava/lang/Object;
.source "TabPluginHelper.java"

# interfaces
.implements Lcom/htc/opensense/plugin/PluginConstants;


# static fields
.field public static final EXTRA_TAB_TAG:Ljava/lang/String; = "PluginTabTag"

.field private static final LOG_TAG:Ljava/lang/String; = "TabPluginHelper"

.field private static final NONAME:Ljava/lang/String; = "noname"

.field private static sSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/plugin/TabPluginHelper;->sSenseVersion:F

    :try_start_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/htc/opensense/plugin/TabPluginHelper;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/CarouselHost;Landroid/os/Bundle;Ljava/util/Map;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/CarouselHost;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p4}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz p2, :cond_5

    invoke-virtual {v7, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v6, 0x2

    aget v6, v0, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/CarouselHost;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/CarouselHost;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v3

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v0

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-virtual {v9}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/TabSwitchHost;Landroid/os/Bundle;[Ljava/lang/String;)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/TabSwitchHost;",
            "Landroid/os/Bundle;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v25, Ljava/util/LinkedList;

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v6, p3

    array-length v0, v6

    move/from16 v19, v0

    const/16 v16, 0x0

    move/from16 v18, v16

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    aget-object v15, v6, v18

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v11

    move-object v7, v11

    array-length v0, v7

    move/from16 v20, v0

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    aget-object v9, v7, v17

    :try_start_0
    new-instance v24, Lcom/htc/opensense/plugin/TabPluginWrapper;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/htc/opensense/plugin/TabPluginWrapper;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v29

    if-nez v29, :cond_1

    :cond_0
    const-string v29, "TabPluginHelper"

    const-string v30, "Invalid TAB plugin : No activity intent or drawable set"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto :goto_1

    :cond_1
    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getTabName()Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_2

    const-string v22, "noname"

    :cond_2
    invoke-virtual/range {v24 .. v24}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v13

    array-length v0, v13

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    const-string v29, "TabPluginHelper"

    const-string v30, "Invalid TAB plugin : Must specify at least 3 drawables"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v14

    const-string v29, "TabPluginHelper"

    const-string v30, "Error adding tab plugin"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    move-object v8, v13

    :try_start_1
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v12, v8, v16

    if-nez v12, :cond_5

    const/4 v10, 0x0

    :cond_4
    if-nez v10, :cond_6

    const-string v29, "TabPluginHelper"

    const-string v30, "Invalid TAB plugin : Must specify at least 3 drawables at index 0~2"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v14

    const-string v29, "TabPluginHelper"

    const-string v30, "Error adding tab plugin"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v28, v22

    const/16 v23, 0x0

    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    add-int/lit8 v23, v23, 0x1

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_4

    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v26

    const-string v29, "TAB_TAG"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v29, 0x0

    aget-object v29, v13, v29

    const/16 v30, 0x1

    aget-object v30, v13, v30

    const/16 v31, 0x2

    aget-object v31, v13, v31

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v14

    const-string v29, "TabPluginHelper"

    const-string v30, "Error adding tab plugin"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v16, v18, 0x1

    move/from16 v18, v16

    goto/16 :goto_0

    :cond_a
    return-object v25
.end method

.method public static varargs addPluginTabs(Landroid/content/Context;Lcom/htc/widget/TabSwitchHost;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/widget/TabSwitchHost;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    goto :goto_0
.end method

.method public static final getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^([A-Za-z\\.]+)-([A-Za-z\\.]+)$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "-"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v4, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRemovedTabTags(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 19

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v17, v0

    :cond_0
    return-object v17

    :cond_1
    move-object/from16 v7, p1

    array-length v14, v7

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_3

    aget-object v18, v7, v12

    invoke-static/range {v18 .. v18}, Lcom/htc/opensense/plugin/TabPluginHelper;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    if-nez v15, :cond_2

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT A1."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", A2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plugin_class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plugin_pkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plugin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A2 WHERE A1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=A2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "package_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v1, Lcom/htc/opensense/plugin/TabPluginHelper;->sSenseVersion:F

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    const-string v1, " AND A2."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " AND A2."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plugin_class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v11, v1, -0x1

    :goto_2
    if-ltz v11, :cond_6

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    const-string v1, "\'"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v11, :cond_5

    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    :cond_6
    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TabPluginHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemovedTabTags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/plugin/PluginRegistryHelper;->RAWQUERY:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_8

    :goto_3
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "package"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "plugin_class"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    :try_start_2
    const-string v1, "TabPluginHelper"

    const-string v2, "Failed to get query results!"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v11, v1, -0x1

    :goto_4
    if-ltz v11, :cond_0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    invoke-static {v15}, Lcom/htc/opensense/plugin/TabPluginHelper;->getTabTag(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v17, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_4
.end method

.method public static varargs getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_5

    move-object/from16 v0, p1

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v3, v0, v5

    invoke-static {p0, v3}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v9

    move-object v1, v9

    array-length v7, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v8, v1, v4

    :try_start_0
    new-instance v10, Lcom/htc/opensense/plugin/TabPluginWrapper;

    invoke-direct {v10, p0, v8}, Lcom/htc/opensense/plugin/TabPluginWrapper;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getDrawableSet()[Landroid/graphics/drawable/Drawable;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_1

    :cond_0
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getDrawableResSet()[I

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getDrawableResSet()[I

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_2

    :cond_1
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getTabTag()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const-string v12, "TabPluginHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TabPlugin is not fully implemented: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "PluginTabTag"

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginWrapper;->getTabTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v12, "TabPluginHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to instantiate TabPlugin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_0

    :cond_5
    return-object v11
.end method

.method public static final getTabTag(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
