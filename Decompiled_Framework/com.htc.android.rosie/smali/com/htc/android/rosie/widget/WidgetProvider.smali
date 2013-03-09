.class public Lcom/htc/android/rosie/widget/WidgetProvider;
.super Ljava/lang/Object;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/WidgetProvider$1;,
        Lcom/htc/android/rosie/widget/WidgetProvider$Info;,
        Lcom/htc/android/rosie/widget/WidgetProvider$MetaData;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClzLoader:Ljava/lang/ClassLoader;

.field private final mComponent:Landroid/content/ComponentName;

.field final mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field private final mMyContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/android/rosie/widget/WidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/widget/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/ComponentName;)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    iput-object p2, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mComponent:Landroid/content/ComponentName;

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mMyContext:Landroid/content/Context;

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/htc/android/rosie/widget/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mClzLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    new-instance v0, Ldalvik/system/PathClassLoader;

    iget-object v1, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mMyContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mClzLoader:Ljava/lang/ClassLoader;

    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mClzLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method


# virtual methods
.method public final getPackageContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider;->mMyContext:Landroid/content/Context;

    return-object v0
.end method

.method loadWidgetWithIntent(Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/Properties;)Lcom/htc/android/rosie/widget/Widget;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/android/rosie/widget/WidgetProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v8, Ljava/lang/ClassNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/htc/android/rosie/widget/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": package class loader unavailable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    if-nez p1, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/htc/android/rosie/widget/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": widget intent not provided"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/htc/android/rosie/widget/Widget;

    move-object v7, v0

    instance-of v8, v7, Lcom/htc/android/rosie/widget/Widget$Base;

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/ClassCastException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "widget should be subclass of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-class v10, Lcom/htc/android/rosie/widget/Widget$Base;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v3

    sget-object v8, Lcom/htc/android/rosie/widget/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v7

    :cond_2
    :try_start_1
    move-object v0, v7

    check-cast v0, Lcom/htc/android/rosie/widget/Widget$Base;

    move-object v1, v0

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->init(Lcom/htc/android/rosie/widget/WidgetProvider;Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/Properties;)Lcom/htc/android/rosie/widget/Widget;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    sget-object v8, Lcom/htc/android/rosie/widget/WidgetProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
