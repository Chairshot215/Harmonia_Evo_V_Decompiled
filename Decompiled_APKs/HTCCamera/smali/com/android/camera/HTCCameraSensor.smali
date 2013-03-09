.class public Lcom/android/camera/HTCCameraSensor;
.super Ljava/lang/Object;
.source "HTCCameraSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCameraSensor$Sensor_Type;
    }
.end annotation


# static fields
.field private static final SENSOR_INFO_FILE:Ljava/lang/String; = "/sys/android_camera/sensor"

.field private static final TAG:Ljava/lang/String; = "HTCCameraSensor"

.field private static final TAG_2M:Ljava/lang/String; = "2M"

.field private static final TAG_3M:Ljava/lang/String; = "3M"

.field private static final TAG_5M:Ljava/lang/String; = "5M"

.field private static final TAG_8M:Ljava/lang/String; = "8M"

.field private static manufacturer:Ljava/lang/String;

.field private static mode:Ljava/lang/String;

.field private static type:Lcom/android/camera/HTCCameraSensor$Sensor_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/android/camera/HTCCameraSensor;->manufacturer:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/camera/HTCCameraSensor;->mode:Ljava/lang/String;

    sget-object v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_3M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    sput-object v0, Lcom/android/camera/HTCCameraSensor;->type:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    invoke-static {}, Lcom/android/camera/HTCCameraSensor;->InitSensor()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InitSensor()V
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/sys/android_camera/sensor"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const-string v9, "HTCCameraSensor"

    const-string v10, "SENSOR_INFO_FILE does not exist !"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v10, 0x1

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    new-instance v8, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "  "

    invoke-direct {v8, v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v4, :cond_2

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/camera/HTCCameraSensor;->manufacturer:Ljava/lang/String;

    :cond_2
    if-ne v4, v11, :cond_3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/camera/HTCCameraSensor;->mode:Ljava/lang/String;

    :cond_3
    const/4 v9, 0x2

    if-ne v4, v9, :cond_4

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v9, "8M"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_8M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    sput-object v9, Lcom/android/camera/HTCCameraSensor;->type:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eqz v7, :cond_6

    const-string v9, "5M"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_5M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    sput-object v9, Lcom/android/camera/HTCCameraSensor;->type:Lcom/android/camera/HTCCameraSensor$Sensor_Type;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_3
    const-string v9, "HTCCameraSensor"

    const-string v10, "fail to judge sensor type"

    invoke-static {v9, v10, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    if-eqz v7, :cond_7

    :try_start_2
    const-string v9, "3M"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_3M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    sput-object v9, Lcom/android/camera/HTCCameraSensor;->type:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    const-string v9, "2M"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_2M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    sput-object v9, Lcom/android/camera/HTCCameraSensor;->type:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    goto :goto_2

    :cond_8
    sget-object v9, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_UNDEFINED:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    sput-object v9, Lcom/android/camera/HTCCameraSensor;->type:Lcom/android/camera/HTCCameraSensor$Sensor_Type;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_9
    move-object v2, v3

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/HTCCameraSensor;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public static getMode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/HTCCameraSensor;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public static getType()Lcom/android/camera/HTCCameraSensor$Sensor_Type;
    .locals 1

    sget-object v0, Lcom/android/camera/HTCCameraSensor;->type:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    return-object v0
.end method
