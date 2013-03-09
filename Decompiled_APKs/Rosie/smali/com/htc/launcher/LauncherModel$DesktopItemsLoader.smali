.class Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopItemsLoader"
.end annotation


# instance fields
.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadApplications:Z

.field private final mLocaleChanged:Z

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/htc/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/htc/launcher/LauncherModel;Lcom/htc/launcher/Launcher;ZZ)V
    .locals 1
    .parameter
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-boolean p4, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    .line 849
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 850
    iput-boolean p3, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    .line 851
    return-void
.end method

.method static synthetic access$600(Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    return v0
.end method

.method private launchAppWidgetBinder(Landroid/content/Context;[ILjava/util/ArrayList;)V
    .locals 5
    .parameter "context"
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1285
    .local p3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1286
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.home.personalize"

    const-string v4, "com.htc.home.personalize.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1288
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1290
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1291
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.android.launcher.settings.bindsources"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1292
    const-string v2, "com.android.launcher.settings.bindtargets"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1293
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1295
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1296
    return-void
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    return v0
.end method

.method public loadDesktopItems()V
    .locals 72

    .prologue
    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/launcher/Launcher;

    .line 939
    .local v12, launcher:Lcom/htc/launcher/Launcher;
    invoke-virtual {v12}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 940
    .local v3, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v12}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v58

    .line 941
    .local v58, manager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;
    invoke-static {v4, v7}, Lcom/htc/launcher/LauncherModel;->access$1002(Lcom/htc/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;
    invoke-static {v4, v7}, Lcom/htc/launcher/LauncherModel;->access$1102(Lcom/htc/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;
    invoke-static {v4, v7}, Lcom/htc/launcher/LauncherModel;->access$1202(Lcom/htc/launcher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 944
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;
    invoke-static {v4, v7}, Lcom/htc/launcher/LauncherModel;->access$1302(Lcom/htc/launcher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/LauncherModel;->access$1000(Lcom/htc/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v37

    .line 947
    .local v37, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/LauncherModel;->access$1100(Lcom/htc/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v36

    .line 948
    .local v36, desktopAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/LauncherAppWidgetInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mButtonBarItems:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/launcher/LauncherModel;->access$1300(Lcom/htc/launcher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v28

    .line 951
    .local v28, buttonBarItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/ItemInfo;>;"
    sget-object v4, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "workspace_id=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 955
    .local v6, c:Landroid/database/Cursor;
    const-string v4, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There are "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " items in current Scene"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    .line 959
    .local v52, idIndex:I
    const-string v4, "intent"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 960
    .local v55, intentIndex:I
    const-string v4, "title"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v69

    .line 961
    .local v69, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 962
    .local v8, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 963
    .local v9, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 964
    .local v14, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 965
    .local v15, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 966
    .local v34, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 967
    .local v57, itemTypeIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 968
    .local v24, appWidgetIdIndex:I
    const-string v4, "screen"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v63

    .line 969
    .local v63, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 970
    .local v29, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 971
    .local v31, cellYIndex:I
    const-string v4, "props"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v61

    .line 972
    .local v61, propsIndex:I
    const-string v4, "spanX"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v66

    .line 973
    .local v66, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v67

    .line 974
    .local v67, spanYIndex:I
    const-string v4, "uri"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v70

    .line 975
    .local v70, uriIndex:I
    const-string v4, "displayMode"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 976
    .local v38, displayModeIndex:I
    const-string v4, "intent"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 977
    .local v44, fxProviderIndex:I
    const-string v4, "uri"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 978
    .local v45, fxStyleIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 979
    .local v46, fxWidgetIdIndex:I
    const-string v4, "title"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 988
    .local v47, fxWidgetTypeIdIndex:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/launcher/LauncherModel;->access$1200(Lcom/htc/launcher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v42

    .line 990
    .local v42, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/launcher/FolderInfo;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v4, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_b

    .line 992
    :try_start_1
    move/from16 v0, v57

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 994
    .local v56, itemType:I
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 996
    .local v30, cellY:I
    sparse-switch v56, :sswitch_data_0

    .line 1158
    const-string v4, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DB iterate : item type - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v56

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1162
    :try_start_2
    sget-object v4, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move/from16 v0, v56

    invoke-virtual {v4, v0, v12, v10, v11}, Lcom/htc/launcher/WidgetPackageManager;->newWidget(ILandroid/content/Context;J)Lcom/htc/launcher/WidgetProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v71

    .line 1168
    .local v71, widgetInfo:Lcom/htc/launcher/Widget;
    if-eqz v71, :cond_0

    .line 1171
    :try_start_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    .line 1177
    .local v35, data:[B
    move/from16 v0, v61

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, v71

    iput-object v4, v0, Lcom/htc/launcher/Widget;->props:[B

    .line 1179
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1180
    .local v33, container:I
    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_a

    .line 1181
    const-string v4, "HomeLoaders"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1194
    .end local v30           #cellY:I
    .end local v33           #container:I
    .end local v35           #data:[B
    .end local v56           #itemType:I
    .end local v71           #widgetInfo:Lcom/htc/launcher/Widget;
    :catch_0
    move-exception v39

    .line 1195
    .local v39, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "Rosie"

    const-string v7, "Desktop items loading interrupted:"

    move-object/from16 v0, v39

    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1198
    .end local v8           #iconTypeIndex:I
    .end local v9           #iconIndex:I
    .end local v14           #iconPackageIndex:I
    .end local v15           #iconResourceIndex:I
    .end local v24           #appWidgetIdIndex:I
    .end local v29           #cellXIndex:I
    .end local v31           #cellYIndex:I
    .end local v34           #containerIndex:I
    .end local v38           #displayModeIndex:I
    .end local v39           #e:Ljava/lang/Exception;
    .end local v42           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/launcher/FolderInfo;>;"
    .end local v44           #fxProviderIndex:I
    .end local v45           #fxStyleIndex:I
    .end local v46           #fxWidgetIdIndex:I
    .end local v47           #fxWidgetTypeIdIndex:I
    .end local v52           #idIndex:I
    .end local v55           #intentIndex:I
    .end local v57           #itemTypeIndex:I
    .end local v61           #propsIndex:I
    .end local v63           #screenIndex:I
    .end local v66           #spanXIndex:I
    .end local v67           #spanYIndex:I
    .end local v69           #titleIndex:I
    .end local v70           #uriIndex:I
    :catch_1
    move-exception v39

    .line 1199
    .restart local v39       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    .line 1200
    const-string v4, "Rosie"

    const-string v7, "Desktop items loading interrupted:"

    move-object/from16 v0, v39

    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1205
    .end local v39           #e:Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v32

    .line 1208
    .local v32, client:Landroid/content/ContentProviderClient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #getter for: Lcom/htc/launcher/LauncherModel;->mFolders:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/htc/launcher/LauncherModel;->access$1200(Lcom/htc/launcher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .local v49, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/htc/launcher/FolderInfo;

    .line 1210
    .local v41, folderInfo:Lcom/htc/launcher/FolderInfo;
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v59

    .line 1211
    .local v59, nNumItems:I
    const/4 v4, 0x1

    move/from16 v0, v59

    if-gt v0, v4, :cond_1

    .line 1215
    :try_start_6
    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/htc/launcher/FolderInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v10, v11, v4}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v7, v10}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1219
    :goto_3
    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v18, -0x64

    cmp-long v4, v10, v18

    if-nez v4, :cond_c

    .line 1220
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1224
    :cond_2
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v59

    if-ne v0, v4, :cond_1

    .line 1226
    move-object/from16 v0, v41

    iget-object v4, v0, Lcom/htc/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/launcher/ItemInfo;

    .line 1227
    .local v17, finalItem:Lcom/htc/launcher/ItemInfo;
    if-eqz v17, :cond_1

    .line 1229
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/htc/launcher/FolderInfo;->container:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/htc/launcher/FolderInfo;->screen:I

    move/from16 v20, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/htc/launcher/FolderInfo;->cellX:I

    move/from16 v21, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/htc/launcher/FolderInfo;->cellY:I

    move/from16 v22, v0

    move-object/from16 v16, v12

    invoke-static/range {v16 .. v22}, Lcom/htc/launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;JIII)V

    .line 1231
    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/htc/launcher/FolderInfo;->container:J

    move-object/from16 v0, v17

    iput-wide v10, v0, Lcom/htc/launcher/ItemInfo;->container:J

    .line 1232
    move-object/from16 v0, v41

    iget v4, v0, Lcom/htc/launcher/FolderInfo;->screen:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/htc/launcher/ItemInfo;->screen:I

    .line 1233
    move-object/from16 v0, v41

    iget v4, v0, Lcom/htc/launcher/FolderInfo;->cellX:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/htc/launcher/ItemInfo;->cellX:I

    .line 1234
    move-object/from16 v0, v41

    iget v4, v0, Lcom/htc/launcher/FolderInfo;->cellY:I

    move-object/from16 v0, v17

    iput v4, v0, Lcom/htc/launcher/ItemInfo;->cellY:I

    .line 1235
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v18, -0x64

    cmp-long v4, v10, v18

    if-nez v4, :cond_d

    .line 1236
    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 999
    .end local v17           #finalItem:Lcom/htc/launcher/ItemInfo;
    .end local v32           #client:Landroid/content/ContentProviderClient;
    .end local v41           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v49           #i$:Ljava/util/Iterator;
    .end local v59           #nNumItems:I
    .restart local v8       #iconTypeIndex:I
    .restart local v9       #iconIndex:I
    .restart local v14       #iconPackageIndex:I
    .restart local v15       #iconResourceIndex:I
    .restart local v24       #appWidgetIdIndex:I
    .restart local v29       #cellXIndex:I
    .restart local v30       #cellY:I
    .restart local v31       #cellYIndex:I
    .restart local v34       #containerIndex:I
    .restart local v38       #displayModeIndex:I
    .restart local v42       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/launcher/FolderInfo;>;"
    .restart local v44       #fxProviderIndex:I
    .restart local v45       #fxStyleIndex:I
    .restart local v46       #fxWidgetIdIndex:I
    .restart local v47       #fxWidgetTypeIdIndex:I
    .restart local v52       #idIndex:I
    .restart local v55       #intentIndex:I
    .restart local v56       #itemType:I
    .restart local v57       #itemTypeIndex:I
    .restart local v61       #propsIndex:I
    .restart local v63       #screenIndex:I
    .restart local v66       #spanXIndex:I
    .restart local v67       #spanYIndex:I
    .restart local v69       #titleIndex:I
    .restart local v70       #uriIndex:I
    :sswitch_0
    :try_start_7
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v54

    .line 1001
    .local v54, intentDescription:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, v54

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v5

    .line 1005
    .local v5, intent:Landroid/content/Intent;
    if-nez v56, :cond_4

    move-object/from16 v4, v58

    move-object v7, v12

    .line 1006
    :try_start_9
    #calls: Lcom/htc/launcher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Lcom/htc/launcher/Launcher;II)Lcom/htc/launcher/ApplicationInfo;
    invoke-static/range {v4 .. v9}, Lcom/htc/launcher/LauncherModel;->access$1400(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/database/Cursor;Lcom/htc/launcher/Launcher;II)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v53

    .line 1013
    .local v53, info:Lcom/htc/launcher/ApplicationInfo;
    :goto_5
    if-nez v53, :cond_3

    .line 1014
    new-instance v53, Lcom/htc/launcher/ApplicationInfo;

    .end local v53           #info:Lcom/htc/launcher/ApplicationInfo;
    invoke-direct/range {v53 .. v53}, Lcom/htc/launcher/ApplicationInfo;-><init>()V

    .line 1015
    .restart local v53       #info:Lcom/htc/launcher/ApplicationInfo;
    move/from16 v0, v56

    move-object/from16 v1, v53

    iput v0, v1, Lcom/htc/launcher/ApplicationInfo;->itemType:I

    .line 1016
    invoke-virtual/range {v58 .. v58}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v53

    iput-object v4, v0, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1019
    :cond_3
    if-eqz v53, :cond_0

    .line 1020
    move/from16 v0, v69

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    iput-object v4, v0, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 1021
    move-object/from16 v0, v53

    iput-object v5, v0, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1023
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v53

    iput-wide v10, v0, Lcom/htc/launcher/ApplicationInfo;->id:J

    .line 1024
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1025
    .restart local v33       #container:I
    move/from16 v0, v33

    int-to-long v10, v0

    move-object/from16 v0, v53

    iput-wide v10, v0, Lcom/htc/launcher/ApplicationInfo;->container:J

    .line 1026
    move/from16 v0, v63

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v53

    iput v4, v0, Lcom/htc/launcher/ApplicationInfo;->screen:I

    .line 1027
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v53

    iput v4, v0, Lcom/htc/launcher/ApplicationInfo;->cellX:I

    .line 1028
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v53

    iput v4, v0, Lcom/htc/launcher/ApplicationInfo;->cellY:I

    .line 1030
    packed-switch v33, :pswitch_data_0

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    move/from16 v0, v33

    int-to-long v10, v0

    move-object/from16 v0, v42

    #calls: Lcom/htc/launcher/LauncherModel;->findOrMakeUserFolder(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/htc/launcher/FolderInfo;
    invoke-static {v4, v12, v0, v10, v11}, Lcom/htc/launcher/LauncherModel;->access$1600(Lcom/htc/launcher/LauncherModel;Landroid/content/Context;Ljava/util/HashMap;J)Lcom/htc/launcher/FolderInfo;

    move-result-object v41

    .line 1043
    .restart local v41       #folderInfo:Lcom/htc/launcher/FolderInfo;
    const/4 v4, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4}, Lcom/htc/launcher/FolderInfo;->add(Lcom/htc/launcher/ApplicationInfo;Z)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 1202
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #iconTypeIndex:I
    .end local v9           #iconIndex:I
    .end local v14           #iconPackageIndex:I
    .end local v15           #iconResourceIndex:I
    .end local v24           #appWidgetIdIndex:I
    .end local v29           #cellXIndex:I
    .end local v30           #cellY:I
    .end local v31           #cellYIndex:I
    .end local v33           #container:I
    .end local v34           #containerIndex:I
    .end local v38           #displayModeIndex:I
    .end local v41           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v42           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/launcher/FolderInfo;>;"
    .end local v44           #fxProviderIndex:I
    .end local v45           #fxStyleIndex:I
    .end local v46           #fxWidgetIdIndex:I
    .end local v47           #fxWidgetTypeIdIndex:I
    .end local v52           #idIndex:I
    .end local v53           #info:Lcom/htc/launcher/ApplicationInfo;
    .end local v54           #intentDescription:Ljava/lang/String;
    .end local v55           #intentIndex:I
    .end local v56           #itemType:I
    .end local v57           #itemTypeIndex:I
    .end local v61           #propsIndex:I
    .end local v63           #screenIndex:I
    .end local v66           #spanXIndex:I
    .end local v67           #spanYIndex:I
    .end local v69           #titleIndex:I
    .end local v70           #uriIndex:I
    :catchall_0
    move-exception v4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1002
    .restart local v8       #iconTypeIndex:I
    .restart local v9       #iconIndex:I
    .restart local v14       #iconPackageIndex:I
    .restart local v15       #iconResourceIndex:I
    .restart local v24       #appWidgetIdIndex:I
    .restart local v29       #cellXIndex:I
    .restart local v30       #cellY:I
    .restart local v31       #cellYIndex:I
    .restart local v34       #containerIndex:I
    .restart local v38       #displayModeIndex:I
    .restart local v42       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/launcher/FolderInfo;>;"
    .restart local v44       #fxProviderIndex:I
    .restart local v45       #fxStyleIndex:I
    .restart local v46       #fxWidgetIdIndex:I
    .restart local v47       #fxWidgetTypeIdIndex:I
    .restart local v52       #idIndex:I
    .restart local v54       #intentDescription:Ljava/lang/String;
    .restart local v55       #intentIndex:I
    .restart local v56       #itemType:I
    .restart local v57       #itemTypeIndex:I
    .restart local v61       #propsIndex:I
    .restart local v63       #screenIndex:I
    .restart local v66       #spanXIndex:I
    .restart local v67       #spanYIndex:I
    .restart local v69       #titleIndex:I
    .restart local v70       #uriIndex:I
    :catch_2
    move-exception v39

    .local v39, e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1009
    .end local v39           #e:Ljava/net/URISyntaxException;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    move-object v11, v6

    move v13, v8

    move/from16 v16, v9

    #calls: Lcom/htc/launcher/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Lcom/htc/launcher/Launcher;IIII)Lcom/htc/launcher/ApplicationInfo;
    invoke-static/range {v10 .. v16}, Lcom/htc/launcher/LauncherModel;->access$1500(Lcom/htc/launcher/LauncherModel;Landroid/database/Cursor;Lcom/htc/launcher/Launcher;IIII)Lcom/htc/launcher/ApplicationInfo;

    move-result-object v53

    .restart local v53       #info:Lcom/htc/launcher/ApplicationInfo;
    goto/16 :goto_5

    .line 1032
    .restart local v33       #container:I
    :pswitch_0
    move-object/from16 v0, v37

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1035
    :pswitch_1
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 1036
    .local v60, packageName:Ljava/lang/String;
    move-object/from16 v0, v60

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/htc/launcher/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1037
    move-object/from16 v0, v28

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1050
    .end local v5           #intent:Landroid/content/Intent;
    .end local v33           #container:I
    .end local v53           #info:Lcom/htc/launcher/ApplicationInfo;
    .end local v54           #intentDescription:Ljava/lang/String;
    .end local v60           #packageName:Ljava/lang/String;
    :sswitch_1
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 1051
    .local v50, id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    move-object/from16 v0, v42

    move-wide/from16 v1, v50

    #calls: Lcom/htc/launcher/LauncherModel;->findOrMakeUserFolder(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/htc/launcher/FolderInfo;
    invoke-static {v4, v12, v0, v1, v2}, Lcom/htc/launcher/LauncherModel;->access$1600(Lcom/htc/launcher/LauncherModel;Landroid/content/Context;Ljava/util/HashMap;J)Lcom/htc/launcher/FolderInfo;

    move-result-object v41

    .line 1053
    .restart local v41       #folderInfo:Lcom/htc/launcher/FolderInfo;
    move/from16 v0, v69

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lcom/htc/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1055
    move-wide/from16 v0, v50

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/htc/launcher/FolderInfo;->id:J

    .line 1056
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1057
    .restart local v33       #container:I
    move/from16 v0, v33

    int-to-long v10, v0

    move-object/from16 v0, v41

    iput-wide v10, v0, Lcom/htc/launcher/FolderInfo;->container:J

    .line 1058
    move/from16 v0, v63

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v41

    iput v4, v0, Lcom/htc/launcher/FolderInfo;->screen:I

    .line 1059
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v41

    iput v4, v0, Lcom/htc/launcher/FolderInfo;->cellX:I

    .line 1060
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v41

    iput v4, v0, Lcom/htc/launcher/FolderInfo;->cellY:I

    .line 1062
    packed-switch v33, :pswitch_data_1

    goto/16 :goto_0

    .line 1067
    :pswitch_2
    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1064
    :pswitch_3
    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1072
    .end local v33           #container:I
    .end local v41           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v50           #id:J
    :sswitch_2
    invoke-static {}, Lcom/htc/launcher/Widget;->makeSearch()Lcom/htc/launcher/Widget;

    move-result-object v71

    .line 1074
    .restart local v71       #widgetInfo:Lcom/htc/launcher/Widget;
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1075
    .restart local v33       #container:I
    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_5

    .line 1076
    const-string v4, "Rosie"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP  ignoring!"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1081
    :cond_5
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v71

    iput-wide v10, v0, Lcom/htc/launcher/Widget;->id:J

    .line 1082
    move/from16 v0, v63

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v71

    iput v4, v0, Lcom/htc/launcher/Widget;->screen:I

    .line 1083
    move/from16 v0, v33

    int-to-long v10, v0

    move-object/from16 v0, v71

    iput-wide v10, v0, Lcom/htc/launcher/Widget;->container:J

    .line 1084
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v71

    iput v4, v0, Lcom/htc/launcher/Widget;->cellX:I

    .line 1085
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v71

    iput v4, v0, Lcom/htc/launcher/Widget;->cellY:I

    .line 1087
    move-object/from16 v0, v37

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1091
    .end local v33           #container:I
    .end local v71           #widgetInfo:Lcom/htc/launcher/Widget;
    :sswitch_3
    move/from16 v0, v24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1092
    .local v23, appWidgetId:I
    new-instance v25, Lcom/htc/launcher/LauncherAppWidgetInfo;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/launcher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1093
    .local v25, appWidgetInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v25

    iput-wide v10, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->id:J

    .line 1094
    move/from16 v0, v63

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->screen:I

    .line 1095
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->cellX:I

    .line 1096
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->cellY:I

    .line 1097
    move/from16 v0, v66

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanX:I

    .line 1098
    move/from16 v0, v67

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->spanY:I

    .line 1099
    move/from16 v0, v55

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    .line 1101
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1102
    .restart local v33       #container:I
    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_6

    .line 1103
    const-string v4, "Rosie"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1107
    :cond_6
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v10, v4

    move-object/from16 v0, v25

    iput-wide v10, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->container:J

    .line 1109
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1113
    .end local v23           #appWidgetId:I
    .end local v25           #appWidgetInfo:Lcom/htc/launcher/LauncherAppWidgetInfo;
    .end local v33           #container:I
    :sswitch_4
    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v62

    .line 1114
    .local v62, provider:Landroid/content/ComponentName;
    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v4, v7}, Lcom/htc/launcher/fusion/WidgetProviderInfoCollector;->getStyleByComponent(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    move-result-object v68

    .line 1117
    .local v68, style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    if-nez v68, :cond_7

    .line 1118
    const-string v4, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ROSIE_DEBUG] Warning!! Style not found for FXWIDGET: itemType("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v56

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ") "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "Provider("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v44

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ") "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "Style("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v45

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ") "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "WidgetTypeId("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v47

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1125
    :cond_7
    new-instance v43, Lcom/htc/launcher/FxItemInfo;

    move-object/from16 v0, v68

    iget-object v4, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    move-object/from16 v0, v43

    move-object/from16 v1, v62

    invoke-direct {v0, v1, v4}, Lcom/htc/launcher/FxItemInfo;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 1126
    .local v43, fxInfo:Lcom/htc/launcher/FxItemInfo;
    move/from16 v0, v61

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, v43

    iput-object v4, v0, Lcom/htc/launcher/FxItemInfo;->data:[B

    .line 1127
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v10, v4

    move-object/from16 v0, v43

    iput-wide v10, v0, Lcom/htc/launcher/FxItemInfo;->container:J

    .line 1128
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v43

    iput-wide v10, v0, Lcom/htc/launcher/FxItemInfo;->id:J

    .line 1129
    move/from16 v0, v46

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    long-to-int v4, v10

    move-object/from16 v0, v43

    iput v4, v0, Lcom/htc/launcher/FxItemInfo;->widgetId:I

    .line 1130
    move/from16 v0, v66

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lcom/htc/launcher/FxItemInfo;->spanX:I

    .line 1131
    move/from16 v0, v67

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lcom/htc/launcher/FxItemInfo;->spanY:I

    .line 1132
    move/from16 v0, v63

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lcom/htc/launcher/FxItemInfo;->screen:I

    .line 1133
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lcom/htc/launcher/FxItemInfo;->cellX:I

    .line 1134
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lcom/htc/launcher/FxItemInfo;->cellY:I

    .line 1136
    sget-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v4, :cond_8

    .line 1137
    const-string v4, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[APTR_TEST, shooterU_534] screen:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1140
    :cond_8
    :try_start_b
    invoke-static {v12}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lcom/htc/launcher/FxItemInfo;->workspaceId:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1145
    :goto_6
    :try_start_c
    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1146
    .restart local v33       #container:I
    const/16 v4, -0x64

    move/from16 v0, v33

    if-eq v0, v4, :cond_9

    .line 1147
    const-string v4, "Rosie"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1151
    :cond_9
    move/from16 v0, v33

    int-to-long v10, v0

    move-object/from16 v0, v43

    iput-wide v10, v0, Lcom/htc/launcher/FxItemInfo;->container:J

    .line 1152
    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1163
    .end local v33           #container:I
    .end local v43           #fxInfo:Lcom/htc/launcher/FxItemInfo;
    .end local v62           #provider:Landroid/content/ComponentName;
    .end local v68           #style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    :catch_3
    move-exception v40

    .line 1165
    .local v40, ex:Ljava/lang/Throwable;
    const-string v4, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "a widget not loaded  : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v56

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1185
    .end local v40           #ex:Ljava/lang/Throwable;
    .restart local v33       #container:I
    .restart local v35       #data:[B
    .restart local v71       #widgetInfo:Lcom/htc/launcher/Widget;
    :cond_a
    move/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v71

    iput-wide v10, v0, Lcom/htc/launcher/Widget;->id:J

    .line 1186
    move/from16 v0, v63

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v71

    iput v4, v0, Lcom/htc/launcher/Widget;->screen:I

    .line 1187
    move/from16 v0, v33

    int-to-long v10, v0

    move-object/from16 v0, v71

    iput-wide v10, v0, Lcom/htc/launcher/Widget;->container:J

    .line 1188
    move/from16 v0, v29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v71

    iput v4, v0, Lcom/htc/launcher/Widget;->cellX:I

    .line 1189
    move/from16 v0, v31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v71

    iput v4, v0, Lcom/htc/launcher/Widget;->cellY:I

    .line 1191
    move-object/from16 v0, v37

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 1202
    .end local v30           #cellY:I
    .end local v33           #container:I
    .end local v35           #data:[B
    .end local v56           #itemType:I
    .end local v71           #widgetInfo:Lcom/htc/launcher/Widget;
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1216
    .end local v8           #iconTypeIndex:I
    .end local v9           #iconIndex:I
    .end local v14           #iconPackageIndex:I
    .end local v15           #iconResourceIndex:I
    .end local v24           #appWidgetIdIndex:I
    .end local v29           #cellXIndex:I
    .end local v31           #cellYIndex:I
    .end local v34           #containerIndex:I
    .end local v38           #displayModeIndex:I
    .end local v42           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/launcher/FolderInfo;>;"
    .end local v44           #fxProviderIndex:I
    .end local v45           #fxStyleIndex:I
    .end local v46           #fxWidgetIdIndex:I
    .end local v47           #fxWidgetTypeIdIndex:I
    .end local v52           #idIndex:I
    .end local v55           #intentIndex:I
    .end local v57           #itemTypeIndex:I
    .end local v61           #propsIndex:I
    .end local v63           #screenIndex:I
    .end local v66           #spanXIndex:I
    .end local v67           #spanYIndex:I
    .end local v69           #titleIndex:I
    .end local v70           #uriIndex:I
    .restart local v32       #client:Landroid/content/ContentProviderClient;
    .restart local v41       #folderInfo:Lcom/htc/launcher/FolderInfo;
    .restart local v49       #i$:Ljava/util/Iterator;
    .restart local v59       #nNumItems:I
    :catch_4
    move-exception v39

    .line 1217
    .local v39, e:Landroid/os/RemoteException;
    const-string v4, "HomeLoaders"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not remove id = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/htc/launcher/FolderInfo;->id:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1221
    .end local v39           #e:Landroid/os/RemoteException;
    :cond_c
    move-object/from16 v0, v41

    iget-wide v10, v0, Lcom/htc/launcher/FolderInfo;->container:J

    const-wide/16 v18, -0x65

    cmp-long v4, v10, v18

    if-nez v4, :cond_2

    .line 1222
    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1237
    .restart local v17       #finalItem:Lcom/htc/launcher/ItemInfo;
    :cond_d
    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/htc/launcher/ItemInfo;->container:J

    const-wide/16 v18, -0x65

    cmp-long v4, v10, v18

    if-nez v4, :cond_1

    .line 1241
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1250
    .end local v17           #finalItem:Lcom/htc/launcher/ItemInfo;
    .end local v41           #folderInfo:Lcom/htc/launcher/FolderInfo;
    .end local v59           #nNumItems:I
    :cond_e
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v64

    .line 1251
    .local v64, size:I
    if-lez v64, :cond_13

    if-eqz v12, :cond_13

    .line 1252
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    .local v26, bindSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v27, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v49

    :cond_f
    :goto_7
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/htc/launcher/LauncherAppWidgetInfo;

    .line 1255
    .local v53, info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    invoke-virtual/range {v53 .. v53}, Lcom/htc/launcher/LauncherAppWidgetInfo;->isTWM_Widget()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1256
    move-object/from16 v0, v53

    iget v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_10

    .line 1257
    sget-object v4, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    move-object/from16 v0, v53

    iget v7, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v7}, Lcom/htc/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 1259
    :cond_10
    sget-object v4, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v4}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v23

    .line 1260
    .restart local v23       #appWidgetId:I
    move/from16 v0, v23

    move-object/from16 v1, v53

    iput v0, v1, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 1261
    move-object/from16 v0, v53

    invoke-static {v12, v0}, Lcom/htc/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;)V

    .line 1262
    move-object/from16 v0, v53

    iget v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1266
    .end local v23           #appWidgetId:I
    .end local v53           #info:Lcom/htc/launcher/LauncherAppWidgetInfo;
    :cond_11
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 1267
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v65, v0

    .line 1268
    .local v65, sources:[I
    const/16 v48, 0x0

    .local v48, i:I
    :goto_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v48

    if-ge v0, v4, :cond_12

    .line 1269
    move-object/from16 v0, v26

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v65, v48

    .line 1268
    add-int/lit8 v48, v48, 0x1

    goto :goto_8

    .line 1271
    :cond_12
    if-eqz v12, :cond_13

    .line 1272
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v27

    invoke-direct {v0, v12, v1, v2}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->launchAppWidgetBinder(Landroid/content/Context;[ILjava/util/ArrayList;)V

    .line 1276
    .end local v26           #bindSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27           #bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v48           #i:I
    .end local v65           #sources:[I
    :cond_13
    return-void

    .line 1141
    .end local v32           #client:Landroid/content/ContentProviderClient;
    .end local v49           #i$:Ljava/util/Iterator;
    .end local v64           #size:I
    .restart local v8       #iconTypeIndex:I
    .restart local v9       #iconIndex:I
    .restart local v14       #iconPackageIndex:I
    .restart local v15       #iconResourceIndex:I
    .restart local v24       #appWidgetIdIndex:I
    .restart local v29       #cellXIndex:I
    .restart local v30       #cellY:I
    .restart local v31       #cellYIndex:I
    .restart local v34       #containerIndex:I
    .restart local v38       #displayModeIndex:I
    .restart local v42       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/launcher/FolderInfo;>;"
    .restart local v43       #fxInfo:Lcom/htc/launcher/FxItemInfo;
    .restart local v44       #fxProviderIndex:I
    .restart local v45       #fxStyleIndex:I
    .restart local v46       #fxWidgetIdIndex:I
    .restart local v47       #fxWidgetTypeIdIndex:I
    .restart local v52       #idIndex:I
    .restart local v55       #intentIndex:I
    .restart local v56       #itemType:I
    .restart local v57       #itemTypeIndex:I
    .restart local v61       #propsIndex:I
    .restart local v62       #provider:Landroid/content/ComponentName;
    .restart local v63       #screenIndex:I
    .restart local v66       #spanXIndex:I
    .restart local v67       #spanYIndex:I
    .restart local v68       #style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    .restart local v69       #titleIndex:I
    .restart local v70       #uriIndex:I
    :catch_5
    move-exception v4

    goto/16 :goto_6

    .line 996
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x3e9 -> :sswitch_2
    .end sparse-switch

    .line 1030
    :pswitch_data_0
    .packed-switch -0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1062
    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 863
    iput-boolean v8, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    .line 865
    iget-object v5, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    .line 866
    .local v1, launcher:Lcom/htc/launcher/Launcher;
    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 867
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 871
    .local v2, manager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->access$700()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 872
    :try_start_0
    sget-object v5, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    if-nez v5, :cond_0

    .line 873
    invoke-static {v1}, Lcom/htc/launcher/WidgetPackageManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/WidgetPackageManager;

    move-result-object v5

    sput-object v5, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    .line 874
    sget-object v5, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    iget-object v7, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    invoke-virtual {v5, v1, v7}, Lcom/htc/launcher/WidgetPackageManager;->initFavorites(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/LauncherModel;)V

    .line 875
    iget-object v5, v1, Lcom/htc/launcher/Launcher;->mWidgetsManager:Lcom/htc/launcher/WidgetsManager;

    sget-object v7, Lcom/htc/launcher/Launcher;->sWidgetPackageManager:Lcom/htc/launcher/WidgetPackageManager;

    invoke-virtual {v5, v7}, Lcom/htc/launcher/WidgetsManager;->setWidgetPackageManager(Lcom/htc/launcher/WidgetPackageManager;)V

    .line 877
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    iget-boolean v5, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-eqz v5, :cond_1

    .line 935
    :goto_0
    return-void

    .line 877
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 883
    :cond_1
    const-string v4, "screen < 0 OR cellX < 0 OR cellY < 0 "

    .line 887
    .local v4, sql:Ljava/lang/String;
    const-string v5, "HomeLoaders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove temporary ItemInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    sget-object v5, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 893
    const-string v5, "PersonalizeSummary"

    invoke-virtual {v1, v5, v9}, Lcom/htc/launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 894
    .local v3, preferences:Landroid/content/SharedPreferences;
    sget-object v5, Lcom/htc/launcher/Launcher;->ACTION_SUMMARY_CHANGES:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/launcher/Launcher;->setLiveWallpaperName(Ljava/lang/CharSequence;)V

    .line 896
    iget-boolean v5, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    if-eqz v5, :cond_2

    .line 899
    const-string v5, "HomeLoaders"

    const-string v6, "Locale changed, rename scenes according to new Locale settings."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :try_start_2
    invoke-static {v0, v2}, Lcom/htc/launcher/LauncherModel;->updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 920
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->loadDesktopItems()V

    .line 922
    iget-boolean v5, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v5, :cond_3

    .line 923
    new-instance v5, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader$1;

    invoke-direct {v5, p0, v1}, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader$1;-><init>(Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;Lcom/htc/launcher/Launcher;)V

    invoke-virtual {v1, v5}, Lcom/htc/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 928
    iget-boolean v5, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #calls: Lcom/htc/launcher/LauncherModel;->startApplicationsLoader(Lcom/htc/launcher/Launcher;)V
    invoke-static {v5, v1}, Lcom/htc/launcher/LauncherModel;->access$800(Lcom/htc/launcher/LauncherModel;Lcom/htc/launcher/Launcher;)V

    .line 931
    :cond_3
    iget-boolean v5, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v5, :cond_4

    .line 932
    iget-object v5, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/htc/launcher/LauncherModel;

    #setter for: Lcom/htc/launcher/LauncherModel;->mDesktopItemsLoaded:Z
    invoke-static {v5, v8}, Lcom/htc/launcher/LauncherModel;->access$902(Lcom/htc/launcher/LauncherModel;Z)Z

    .line 934
    :cond_4
    iput-boolean v9, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    goto :goto_0

    .line 908
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method stop()V
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    .line 855
    return-void
.end method
