.class public Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;
.super Ljava/lang/Object;
.source "HtcCustomizedInactivityTime.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "system"

.field private static final FUNCTION_ENTRIES:Ljava/lang/String; = "inactivity_time"

.field private static final MODULE_NAME:Ljava/lang/String; = "Settings"

.field private static final TAG:Ljava/lang/String; = "HtcCustomizedInactivityTime"

.field private static mValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntries(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 65
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->readCustomizedData(Landroid/content/Context;)V

    .line 69
    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isT0004:Z

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 71
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    return-object v0

    .line 72
    :cond_2
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 73
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static readCustomizedData(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 85
    const-string v5, "system"

    const-string v6, "Settings"

    invoke-static {p0, v5, v6}, Lcom/android/settings/framework/storage/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 89
    .local v0, customizedData:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    invoke-virtual {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_1

    .line 90
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->readDefaultData(Landroid/content/Context;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v5, "inactivity_time"

    invoke-virtual {v0, v5}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 98
    .local v4, valuesBundle:Landroid/os/Bundle;
    if-nez v4, :cond_2

    .line 99
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->readDefaultData(Landroid/content/Context;)V

    goto :goto_0

    .line 106
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v5, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    .line 107
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, entry:Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 123
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #entry:Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 124
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->readDefaultData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static readDefaultData(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, values:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    .line 143
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 145
    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 146
    .local v2, value:I
    sget-object v4, Lcom/android/settings/framework/storage/customize/HtcCustomizedInactivityTime;->mValueList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v2           #value:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    return-void
.end method
