.class public Lcom/htc/launcher/PersonalizeContentProvider;
.super Landroid/content/ContentProvider;
.source "PersonalizeContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.personalize"

.field private static COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_CHT_ITEMS:Ljava/lang/String; = "cht"

.field public static final TABLE_COMBINED_GADGET_ITEMS:Ljava/lang/String; = "combined_gadget"

.field public static final TABLE_EXT_ITEMS:Ljava/lang/String; = "ext"

.field public static final TABLE_FOLDER_ITEMS:Ljava/lang/String; = "folder"

.field public static final TABLE_FUNCTION_MENU_ITEMS:Ljava/lang/String; = "function_menu"

.field public static final TABLE_LIVE_FOLDER_ITEMS:Ljava/lang/String; = "live_folder"

.field public static final TABLE_MENU_ITEMS:Ljava/lang/String; = "menu"

.field public static final TABLE_PROGRAM_ITEMS:Ljava/lang/String; = "program"

.field public static final TABLE_SETTING_WIDGET_ITEMS:Ljava/lang/String; = "setting_widget"

.field public static final TABLE_SHORTCUT_ITEMS:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String;

.field private static final localLOGD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "content://com.htc.launcher.personalize"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/PersonalizeContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 27
    const-class v0, Lcom/htc/launcher/PersonalizeContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/PersonalizeContentProvider;->TAG:Ljava/lang/String;

    .line 220
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "index"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "actionTag"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gadgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "className"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "component"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "next_level"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "widget_item_is_group_item"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "widget_item_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 0
    .parameter "context"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pathPermissions"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    .line 47
    return-void
.end method

.method private getCursorFromItems(Ljava/util/ArrayList;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 134
    .local v4, initialTime:J
    new-instance v8, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;

    invoke-direct {v8, p0, p2}, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;-><init>(Lcom/htc/launcher/PersonalizeContentProvider;[Ljava/lang/String;)V

    .line 135
    .local v8, itemCursor:Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v3, iconBundle:Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 137
    sget-object v9, Lcom/htc/launcher/PersonalizeContentProvider;->TAG:Ljava/lang/String;

    const-string v10, "items is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-object v8

    .line 140
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 141
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/AddAdapter$ListItem;

    .line 143
    .local v7, item:Lcom/htc/launcher/AddAdapter$ListItem;
    invoke-virtual {v8}, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 146
    .local v0, builder:Landroid/database/MatrixCursor$RowBuilder;
    invoke-direct {p0, v0, v7, p2, v1}, Lcom/htc/launcher/PersonalizeContentProvider;->initBuilder(Landroid/database/MatrixCursor$RowBuilder;Lcom/htc/launcher/AddAdapter$ListItem;[Ljava/lang/String;I)Z

    move-result v6

    .line 149
    .local v6, isNeedIcon:Z
    if-eqz v6, :cond_2

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, icon:Landroid/graphics/Bitmap;
    iget-object v9, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    instance-of v9, v9, Lcom/htc/launcher/FastBitmapDrawable;

    if-eqz v9, :cond_3

    .line 152
    iget-object v9, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    check-cast v9, Lcom/htc/launcher/FastBitmapDrawable;

    check-cast v9, Lcom/htc/launcher/FastBitmapDrawable;

    invoke-virtual {v9}, Lcom/htc/launcher/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 157
    :cond_1
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    .end local v2           #icon:Landroid/graphics/Bitmap;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    .restart local v2       #icon:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v9, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    instance-of v9, v9, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_1

    .line 154
    iget-object v9, v7, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 162
    .end local v0           #builder:Landroid/database/MatrixCursor$RowBuilder;
    .end local v2           #icon:Landroid/graphics/Bitmap;
    .end local v6           #isNeedIcon:Z
    .end local v7           #item:Lcom/htc/launcher/AddAdapter$ListItem;
    :cond_4
    #calls: Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;->putExtra(Landroid/os/Bundle;)V
    invoke-static {v8, v3}, Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;->access$000(Lcom/htc/launcher/PersonalizeContentProvider$PersonalizeCursor;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static getItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "tableName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/AddAdapter$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    const-string v2, "program"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddProgramItems:Ljava/util/ArrayList;

    .line 100
    :cond_0
    :goto_0
    return-object v1

    .line 71
    :cond_1
    const-string v2, "shortcut"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddShortcutItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, "combined_gadget"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddCombinedGadgetItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 75
    :cond_3
    const-string v2, "setting_widget"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddSettingsWidgetItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 77
    :cond_4
    const-string v2, "live_folder"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddLiveFolderItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 79
    :cond_5
    const-string v2, "folder"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 80
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddFolderItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 81
    :cond_6
    const-string v2, "menu"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 82
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddMenuItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 83
    :cond_7
    const-string v2, "function_menu"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 84
    sget-object v1, Lcom/htc/launcher/AddAdapter;->maddFuncMenuItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 85
    :cond_8
    const-string v2, "cht"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 86
    sget-object v1, Lcom/htc/launcher/AddAdapter;->mAddCHTItems:Ljava/util/ArrayList;

    goto :goto_0

    .line 87
    :cond_9
    if-eqz p0, :cond_0

    const-string v2, "ext"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    sget-object v0, Lcom/htc/launcher/AddAdapter;->mAddEXTItems:Ljava/util/ArrayList;

    .line 92
    .local v0, extItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;>;"
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    check-cast v1, Ljava/util/ArrayList;

    .restart local v1       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    goto :goto_0

    .line 95
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/AddAdapter$ListItem;>;"
    goto :goto_0
.end method

.method private initBuilder(Landroid/database/MatrixCursor$RowBuilder;Lcom/htc/launcher/AddAdapter$ListItem;[Ljava/lang/String;I)Z
    .locals 11
    .parameter "builder"
    .parameter "item"
    .parameter "projection"
    .parameter "index"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 167
    const/4 v4, 0x0

    .line 168
    .local v4, isNeedIcon:Z
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_11

    aget-object v1, v0, v3

    .line 169
    .local v1, column:Ljava/lang/String;
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 170
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 168
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 172
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 173
    :cond_1
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 174
    iget v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 175
    :cond_2
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    iget v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 177
    :cond_3
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    iget v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->GadgetId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 179
    :cond_4
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 180
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 181
    :cond_5
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 182
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->className:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 183
    :cond_6
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 184
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    if-eqz v7, :cond_7

    .line 185
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, componentString:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 188
    .end local v2           #componentString:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 190
    :cond_8
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 191
    iget v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 192
    :cond_9
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v8, 0x9

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 193
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_a

    .line 194
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, uri:Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 197
    .end local v6           #uri:Ljava/lang/String;
    :cond_a
    invoke-virtual {p1, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 200
    :cond_b
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 201
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    if-eqz v7, :cond_c

    .line 202
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget v7, v7, Lcom/htc/launcher/WidgetItem;->mItemCategory:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 204
    :cond_c
    invoke-virtual {p1, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 205
    :cond_d
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v8, 0xb

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 206
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    if-eqz v7, :cond_e

    .line 207
    iget-object v7, p2, Lcom/htc/launcher/AddAdapter$ListItem;->widgetItem:Lcom/htc/launcher/WidgetItem;

    iget v7, v7, Lcom/htc/launcher/WidgetItem;->mItemType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 209
    :cond_e
    invoke-virtual {p1, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 210
    :cond_f
    sget-object v7, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v7, v7, v8

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 211
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 214
    :cond_10
    invoke-virtual {p1, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_1

    .line 217
    .end local v1           #column:Ljava/lang/String;
    :cond_11
    return v4
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, table:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 61
    sget-object p2, Lcom/htc/launcher/PersonalizeContentProvider;->COLUMN_NAMES:[Ljava/lang/String;

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/htc/launcher/PersonalizeContentProvider;->getItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/htc/launcher/PersonalizeContentProvider;->getCursorFromItems(Ljava/util/ArrayList;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method
