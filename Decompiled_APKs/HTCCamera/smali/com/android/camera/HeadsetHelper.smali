.class public Lcom/android/camera/HeadsetHelper;
.super Ljava/lang/Object;
.source "HeadsetHelper.java"


# static fields
.field public static final PATH_HEADSET_NAME:Ljava/lang/String; = "/sys/class/switch/h2w/name"

.field public static final PATH_HEADSET_STATE:Ljava/lang/String; = "/sys/class/switch/h2w/state"

.field public static mHeadSetPlugged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHeadsetName()Ljava/lang/String;
    .locals 1

    const-string v0, "/sys/class/switch/h2w/name"

    invoke-static {v0}, Lcom/android/camera/HeadsetHelper;->readLineEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeadsetState()Ljava/lang/String;
    .locals 1

    const-string v0, "/sys/class/switch/h2w/state"

    invoke-static {v0}, Lcom/android/camera/HeadsetHelper;->readLineEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isHeadsetPlugged()Z
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/camera/HeadsetHelper;->getHeadsetName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    :goto_0
    return v7

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/camera/HeadsetHelper;->getHeadsetState()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "headset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0

    :catch_0
    move-exception v2

    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x8

    if-lt v3, v7, :cond_4

    add-int/lit8 v5, v3, -0x8

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x31

    if-ne v0, v7, :cond_4

    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0

    :cond_4
    sput-boolean v9, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    sget-boolean v7, Lcom/android/camera/HeadsetHelper;->mHeadSetPlugged:Z

    goto :goto_0
.end method

.method private static readLineEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
