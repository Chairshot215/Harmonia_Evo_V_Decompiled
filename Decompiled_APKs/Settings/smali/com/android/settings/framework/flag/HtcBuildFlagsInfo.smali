.class public final Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;
.super Ljava/lang/Object;
.source "HtcBuildFlagsInfo.java"


# static fields
.field private static mCurrentDeviceFlag:Ljava/lang/reflect/Field;

.field private static mCurrentLanguageFlag:Ljava/lang/reflect/Field;

.field private static mCurrentProjectFlag:Ljava/lang/reflect/Field;

.field private static mCurrentSenseVersion:Ljava/lang/reflect/Field;

.field private static final mDeviceFlagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLanguageFlagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final mOtherFlagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProjectFlagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mDeviceFlagList:Ljava/util/ArrayList;

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mProjectFlagList:Ljava/util/ArrayList;

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mLanguageFlagList:Ljava/util/ArrayList;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mOtherFlagList:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    .line 36
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "com.htc.htcjavaflag.HtcBuildFlag"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    if-eqz v0, :cond_0

    .line 43
    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->initializeArrayList(Ljava/lang/Class;)V

    .line 44
    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->initializeCurrentFlags(Ljava/lang/Class;)V

    .line 46
    :cond_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentDeviceFlag()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mCurrentDeviceFlag:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getCurrentLanguageFlag()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mCurrentLanguageFlag:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getCurrentProjectFlag()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mCurrentProjectFlag:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getCurrentSenseVersion()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mCurrentSenseVersion:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getDeviceFlagList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mDeviceFlagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getLanguageFlagList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    sget-object v0, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mLanguageFlagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getOtherFlagList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mOtherFlagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getProjectFlagList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mProjectFlagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static initializeArrayList(Ljava/lang/Class;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 66
    .local v1, fields:[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 67
    aget-object v0, v1, v2

    .line 68
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, name:Ljava/lang/String;
    const-string v4, "DEVICE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mDeviceFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const-string v4, "PROJECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mProjectFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_1
    const-string v4, "LANGUAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mLanguageFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_2
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mOtherFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v3           #name:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static initializeCurrentFlags(Ljava/lang/Class;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "Htc_DEVICE_flag"

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 91
    .local v3, value:Ljava/lang/Short;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mDeviceFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 92
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mDeviceFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-ne v4, v5, :cond_3

    .line 93
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mDeviceFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    sput-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mCurrentDeviceFlag:Ljava/lang/reflect/Field;

    .line 99
    :cond_0
    const-string v4, "Htc_PROJECT_flag"

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 100
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 101
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mProjectFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 102
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mProjectFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-ne v4, v5, :cond_4

    .line 103
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mProjectFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    sput-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mCurrentProjectFlag:Ljava/lang/reflect/Field;

    .line 109
    :cond_1
    const-string v4, "Htc_LANGUAGE_flag"

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 110
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 111
    const/4 v2, 0x0

    :goto_2
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mLanguageFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 112
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mLanguageFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-ne v4, v5, :cond_5

    .line 113
    sget-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mLanguageFlagList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    sput-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mCurrentLanguageFlag:Ljava/lang/reflect/Field;

    .line 119
    :cond_2
    const-string v4, "Htc_Sense_Version"

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/android/settings/framework/flag/HtcBuildFlagsInfo;->mCurrentSenseVersion:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 130
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #i:I
    .end local v3           #value:Ljava/lang/Short;
    :goto_3
    return-void

    .line 91
    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v2       #i:I
    .restart local v3       #value:Ljava/lang/Short;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 101
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 121
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #i:I
    .end local v3           #value:Ljava/lang/Short;
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    .line 123
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 125
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 127
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3
.end method
