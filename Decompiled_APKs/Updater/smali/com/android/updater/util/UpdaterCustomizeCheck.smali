.class public Lcom/android/updater/util/UpdaterCustomizeCheck;
.super Ljava/lang/Object;
.source "UpdaterCustomizeCheck.java"


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterCustomizeCheck"

.field private static final VAR_O2DE:Ljava/lang/String; = "O2___102"

.field private static final VAR_O2UK:Ljava/lang/String; = "O2___001"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDA()Z
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, isDA:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 35
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 41
    :cond_1
    return v0
.end method

.method public static isDAUserTrial()Z
    .locals 10

    .prologue
    .line 46
    const/4 v6, 0x0

    .line 47
    .local v6, isUser:Z
    const-string v2, "\\."

    .line 48
    .local v2, TEST_SPLIT_DOT:Ljava/lang/String;
    const/4 v0, 0x2

    .line 49
    .local v0, TEST_CODE_NUMBER:I
    const-string v1, "999"

    .line 52
    .local v1, TEST_KEY_STRING:Ljava/lang/String;
    :try_start_0
    const-string v7, "ro.build.description"

    const-string v8, "unknow"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, buildNumber:Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, buildNumberSplit:[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v4, v7

    const-string v8, "999"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 57
    const/4 v6, 0x1

    .line 63
    .end local v3           #buildNumber:Ljava/lang/String;
    .end local v4           #buildNumberSplit:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDA()Z

    move-result v7

    if-nez v7, :cond_1

    .line 64
    const/4 v6, 0x0

    .line 68
    :cond_1
    return v6

    .line 59
    :catch_0
    move-exception v5

    .line 60
    .local v5, e:Ljava/lang/Exception;
    const-string v7, "UpdaterAPK | UpdaterCustomizeCheck"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not get ro.build.description file."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFOTADisableProj()Z
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, isFOTADisableProj:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 161
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x1

    .line 172
    :cond_1
    :goto_0
    return v0

    .line 165
    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_1

    .line 166
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xf

    if-eq v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-ne v1, v2, :cond_1

    .line 169
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInternalStorage()Z
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, isInternal:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x89

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x1

    .line 153
    :cond_1
    return v0
.end method

.method public static isNoIPTFeature()Z
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, isNoIPTFeature:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 141
    :cond_1
    return v0
.end method

.method public static isNotAllow3G()Z
    .locals 5

    .prologue
    const/16 v4, 0x7b

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, isNotAllow3G:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 75
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_3

    .line 79
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v4, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 81
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 84
    :cond_3
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x72

    if-ne v2, v3, :cond_5

    .line 85
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7e

    if-eq v2, v3, :cond_4

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x94

    if-eq v2, v3, :cond_4

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-eq v2, v3, :cond_4

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v4, :cond_0

    .line 90
    :cond_4
    const-string v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, cid:Ljava/lang/String;
    const-string v2, "O2___001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const/4 v1, 0x1

    goto :goto_0

    .line 96
    .end local v0           #cid:Ljava/lang/String;
    :cond_5
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v4, :cond_0

    .line 97
    const-string v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .restart local v0       #cid:Ljava/lang/String;
    const-string v2, "O2___001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isO2DE()Z
    .locals 4

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, isO2DE:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    .line 112
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7e

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x94

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_1

    .line 118
    :cond_0
    const-string v2, "ro.cid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, cid:Ljava/lang/String;
    const-string v2, "O2___102"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    const/4 v1, 0x1

    .line 127
    .end local v0           #cid:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public static isPydSFRProject()Z
    .locals 3

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, isPyramidSFR:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xdb

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    .line 180
    const/4 v0, 0x1

    .line 183
    :cond_0
    return v0
.end method

.method public static isTMOUS()Z
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, isTMOUS:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x89

    if-ne v1, v2, :cond_1

    .line 22
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 27
    :cond_1
    return v0
.end method
