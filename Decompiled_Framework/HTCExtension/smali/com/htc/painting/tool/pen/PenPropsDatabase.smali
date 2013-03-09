.class public Lcom/htc/painting/tool/pen/PenPropsDatabase;
.super Ljava/lang/Object;
.source "PenPropsDatabase.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.pen"

.field public static final KEY_CLASSNAME:Ljava/lang/String; = "classname"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_PACKAGENAME:Ljava/lang/String; = "packagename"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final PATH_PEN_PROPS:Ljava/lang/String; = "property"

.field public static final URI_PEN_PROPS:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.htc.pen"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "property"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/painting/tool/pen/PenPropsDatabase;->URI_PEN_PROPS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkFlags(Landroid/database/Cursor;II)Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "flags"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz p1, :cond_1

    and-int v3, p1, v1

    if-eq v3, p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p2, :cond_2

    and-int v3, p2, v1

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getContentValues(Lcom/htc/painting/tool/pen/PenProps;)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/painting/tool/pen/PenProps;->checkMissingKeyAndTypes()V

    new-instance v0, Lcom/htc/painting/tool/pen/PenProps;

    invoke-direct {v0, p0}, Lcom/htc/painting/tool/pen/PenProps;-><init>(Lcom/htc/painting/tool/pen/PenProps;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_pen_name"

    const-string v3, "name"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->removeIfExist(Ljava/lang/String;)V

    const-string v1, "_version"

    const-string v3, "version"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->removeIfExist(Ljava/lang/String;)V

    const-string v1, "_app_packagename"

    const-string v3, "packagename"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->removeIfExist(Ljava/lang/String;)V

    const-string v1, "_pen_classname"

    const-string v3, "classname"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->removeIfExist(Ljava/lang/String;)V

    const-string v1, "_flags"

    const-string v3, "flags"

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/tool/pen/PenProps;->removeIfExist(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v0}, Lcom/htc/painting/tool/pen/PenProps;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object v2
.end method

.method static getPen(Landroid/database/Cursor;Landroid/content/Context;)Lcom/htc/painting/tool/pen/Pen;
    .locals 17

    const-string v14, "_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v14, "packagename"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v14, "classname"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/htc/painting/tool/pen/PenPropsDatabase;->getReadOnlyPenProps(Landroid/database/Cursor;)Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    move-result-object v13

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/content/Context;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/Integer;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-class v16, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    aput-object v16, v14, v15

    invoke-virtual {v7, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v13, v14, v15

    invoke-virtual {v5, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/htc/painting/tool/pen/Pen;

    move-object v11, v0
    :try_end_0
    .catch Lcom/htc/painting/tool/pen/PenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    return-object v11

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Lcom/htc/painting/tool/pen/PenException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_7
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_8
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getReadOnlyPenProps(Landroid/database/Cursor;)Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    const/4 v11, 0x0

    const-string v13, "name"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v13, "version"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v13, "packagename"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v13, "classname"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v13, "flags"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v13, "data"

    invoke-interface {p0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    new-instance v11, Lcom/htc/painting/tool/pen/PenProps;

    invoke-direct {v11, v7}, Lcom/htc/painting/tool/pen/PenProps;-><init>([B)V

    const-string v13, "_pen_name"

    invoke-virtual {v11, v13, v9}, Lcom/htc/painting/tool/pen/PenProps;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "_version"

    invoke-virtual {v11, v13, v12}, Lcom/htc/painting/tool/pen/PenProps;->putInt(Ljava/lang/String;I)V

    const-string v13, "_app_packagename"

    invoke-virtual {v11, v13, v10}, Lcom/htc/painting/tool/pen/PenProps;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "_pen_classname"

    invoke-virtual {v11, v13, v0}, Lcom/htc/painting/tool/pen/PenProps;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "_flags"

    invoke-virtual {v11, v13, v8}, Lcom/htc/painting/tool/pen/PenProps;->putInt(Ljava/lang/String;I)V

    new-instance v13, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    invoke-direct {v13, v11}, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;-><init>(Lcom/htc/painting/tool/pen/PenProps;)V

    return-object v13
.end method
