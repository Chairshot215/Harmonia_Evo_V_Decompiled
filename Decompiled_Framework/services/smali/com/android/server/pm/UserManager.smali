.class public Lcom/android/server/pm/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final LOG_TAG:Ljava/lang/String; = "UserManager"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final USER_INFO_DIR:Ljava/lang/String; = null

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"


# instance fields
.field private mBaseUserPath:Ljava/io/File;

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManager;->USER_INFO_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/io/File;)V
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/UserManager;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/UserManager;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iput-object p2, p0, Lcom/android/server/pm/UserManager;->mBaseUserPath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    const-string v2, "userlist.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->readUserList()V

    return-void
.end method

.method private createPackageFolders(ILjava/io/File;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v8, -0x1

    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    if-eqz v6, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f9

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v7, 0x2710

    if-le v6, v7, :cond_2

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const v7, 0x186a0

    if-ge v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/content/pm/PackageManager;->getUid(II)I

    move-result v8

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;II)I

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v6, "UserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time to create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fallbackToSingleUser()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/pm/UserInfo;

    const-string v1, "Primary"

    const/4 v2, 0x3

    invoke-direct {v0, v3, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManager;->writeUser(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method private getNextAvailableId()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readUser(I)Landroid/content/pm/UserInfo;
    .locals 13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v10, 0x0

    invoke-interface {v5, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    :cond_1
    const/4 v10, 0x2

    if-eq v7, v10, :cond_2

    const-string v10, "UserManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to read user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    move-object v0, v1

    :goto_0
    return-object v9

    :cond_2
    const/4 v10, 0x2

    if-ne v7, v10, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eq v10, p1, :cond_3

    const-string v10, "UserManager"

    const-string v11, "User id does not match the file name"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    const-string v11, "flags"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_5

    const/4 v10, 0x1

    if-ne v7, v10, :cond_4

    :cond_5
    const/4 v10, 0x2

    if-ne v7, v10, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x4

    if-ne v7, v10, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    new-instance v9, Landroid/content/pm/UserInfo;

    invoke-direct {v9, p1, v4, v3}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v10

    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    :catch_1
    move-exception v10

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v10

    goto :goto_1

    :catch_3
    move-exception v10

    move-object v0, v1

    goto :goto_1
.end method

.method private readUserList()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x2

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v10, :cond_2

    if-ne v6, v11, :cond_1

    :cond_2
    if-eq v6, v10, :cond_3

    const-string v8, "UserManager"

    const-string v9, "Unable to read user list"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V

    goto :goto_0

    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_4

    if-ne v6, v10, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    const-string v9, "id"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManager;->readUser(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v0, v1

    :goto_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->fallbackToSingleUser()V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private removePackageFolders(I)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Installer;->removeUserDataDirs(I)I

    goto :goto_0
.end method

.method private updateUserIds()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeUser(Landroid/content/pm/UserInfo;)V
    .locals 8

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v5, "utf-8"

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const-string v6, "user"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "id"

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "flags"

    iget v7, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v6, "user"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v5, "UserManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing user info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeUserList()V
    .locals 9

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v6, "utf-8"

    invoke-interface {v4, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v6, 0x0

    const-string v7, "users"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    const/4 v6, 0x0

    const-string v7, "user"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "id"

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const-string v7, "user"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const-string v7, "users"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string v6, "UserManager"

    const-string v7, "Error writing user list"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public clearUserDataForAllUsers(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/Installer;->clearUserData(Ljava/lang/String;I)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public createUser(Ljava/lang/String;ILjava/util/List;)Landroid/content/pm/UserInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Landroid/content/pm/UserInfo;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->getNextAvailableId()I

    move-result v0

    new-instance v1, Landroid/content/pm/UserInfo;

    invoke-direct {v1, v0, p1, p2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManager;->mBaseUserPath:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, p3}, Lcom/android/server/pm/UserManager;->createPackageFolders(ILjava/io/File;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManager;->writeUser(Landroid/content/pm/UserInfo;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    goto :goto_0
.end method

.method getUserIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public installPackageForAllUsers(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-static {v3, p2}, Landroid/content/pm/PackageManager;->getUid(II)I

    move-result v5

    invoke-virtual {v4, p1, v5, v3}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;II)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removePackageForAllUsers(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManager;->mUserIds:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManager;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/Installer;->remove(Ljava/lang/String;I)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeUser(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManager;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->writeUserList()V

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManager;->removePackageFolders(I)Z

    invoke-direct {p0}, Lcom/android/server/pm/UserManager;->updateUserIds()V

    :cond_0
    return-void
.end method
