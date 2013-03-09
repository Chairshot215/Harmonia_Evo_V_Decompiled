.class public Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;
.super Ljava/lang/Object;
.source "HtcCustomizedSystemTutorial.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "application"

.field private static final FUNCTION_NAME:Ljava/lang/String; = "Step_Config"

.field private static final ITEM_NAME:Ljava/lang/String; = "Tutorial"

.field private static final MODULE_NAME:Ljava/lang/String; = "OOBE"

.field private static final TAG:Ljava/lang/String; = "HtcCustomizedSystemTutorial"

.field private static mHasCustomizedData:Z

.field private static mSystemTutorial:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mHasCustomizedData:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mSystemTutorial:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mHasCustomizedData:Z

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mSystemTutorial:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->readCustomizedData(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mHasCustomizedData:Z

    .line 69
    sget-boolean v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mHasCustomizedData:Z

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->readDefaultData(Landroid/content/Context;)V

    .line 78
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mSystemTutorial:Ljava/lang/Boolean;

    return-object v0

    .line 76
    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->readDefaultData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static readCustomizedData(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const-string v5, "application"

    const-string v6, "OOBE"

    invoke-static {p0, v5, v6}, Lcom/android/settings/framework/storage/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 90
    .local v0, customizedData:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    const-string v5, "Step_Config"

    invoke-virtual {v0, v5}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 93
    .local v1, data:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v3

    .line 97
    :cond_1
    const-string v5, "Tutorial"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, itemValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 107
    const-string v5, "yes"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mSystemTutorial:Ljava/lang/Boolean;

    :goto_1
    move v3, v4

    .line 114
    goto :goto_0

    .line 109
    :cond_2
    const-string v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mSystemTutorial:Ljava/lang/Boolean;

    goto :goto_1

    .line 112
    :cond_3
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v3}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v5, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mSystemTutorial:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private static readDefaultData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->mSystemTutorial:Ljava/lang/Boolean;

    .line 128
    return-void
.end method
