.class public Lcom/android/smith/HtcNative;
.super Ljava/lang/Object;
.source "HtcNative.java"


# static fields
.field public static final MEDIA_MOUNTED:I = 0x1

.field public static final MEDIA_REMOVED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SM:HtcNative"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    const-string v0, "/data/data/com.android.smith/lib/libsmith.so"

    .line 189
    .local v0, lib:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 192
    const-string v1, "SM:HtcNative"

    const-string v2, "local lib, 4.4.plat_4.0.3.IML74K-shooter-l5-s17"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v1, "smith"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 197
    const-string v1, "SM:HtcNative"

    const-string v2, "system lib, 4.4.plat_4.0.3.IML74K-shooter-l5-s17"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native confClear(J)V
.end method

.method public static native confClose(J)V
.end method

.method public static native confDebugDump(J)V
.end method

.method public static confGet(JLjava/lang/String;F)F
    .locals 3
    .parameter "fd"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 117
    invoke-static {p0, p1, p2}, Lcom/android/smith/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 131
    .end local p3
    :goto_0
    return p3

    .line 124
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, ret:F
    :goto_1
    move p3, v1

    .line 131
    goto :goto_0

    .line 126
    .end local v1           #ret:F
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    move v1, p3

    .restart local v1       #ret:F
    goto :goto_1
.end method

.method public static confGet(JLjava/lang/String;I)I
    .locals 3
    .parameter "fd"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 75
    invoke-static {p0, p1, p2}, Lcom/android/smith/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 89
    .end local p3
    :goto_0
    return p3

    .line 82
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, ret:I
    :goto_1
    move p3, v1

    .line 89
    goto :goto_0

    .line 84
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    move v1, p3

    .restart local v1       #ret:I
    goto :goto_1
.end method

.method public static confGet(JLjava/lang/String;J)J
    .locals 4
    .parameter "fd"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 96
    invoke-static {p0, p1, p2}, Lcom/android/smith/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 110
    .end local p3
    :goto_0
    return-wide p3

    .line 103
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .local v1, ret:J
    :goto_1
    move-wide p3, v1

    .line 110
    goto :goto_0

    .line 105
    .end local v1           #ret:J
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    move-wide v1, p3

    .restart local v1       #ret:J
    goto :goto_1
.end method

.method public static confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fd"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/smith/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method public static confGet(JLjava/lang/String;Z)Z
    .locals 3
    .parameter "fd"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 138
    invoke-static {p0, p1, p2}, Lcom/android/smith/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 152
    .end local p3
    :goto_0
    return p3

    .line 145
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, ret:Z
    :goto_1
    move p3, v1

    .line 152
    goto :goto_0

    .line 147
    .end local v1           #ret:Z
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    move v1, p3

    .restart local v1       #ret:Z
    goto :goto_1
.end method

.method public static native confGetNative(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native confLoad(Ljava/lang/String;)J
.end method

.method public static native confNew(Ljava/lang/String;)J
.end method

.method public static native confSave(J)Z
.end method

.method public static native confSet(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native confSort(J)V
.end method

.method public static dummy(Z)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 160
    if-nez p0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/android/smith/HtcNative;->getLibVersion()I

    .line 163
    invoke-static {v2}, Lcom/android/smith/HtcNative;->getFileStat(Lcom/android/smith/infoclaz/FileStat;)I

    .line 164
    invoke-static {}, Lcom/android/smith/HtcNative;->getCpuUsage()F

    .line 166
    invoke-static {v2}, Lcom/android/smith/HtcNative;->confNew(Ljava/lang/String;)J

    .line 167
    invoke-static {v2}, Lcom/android/smith/HtcNative;->confLoad(Ljava/lang/String;)J

    .line 168
    invoke-static {v0, v1, v2}, Lcom/android/smith/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    .line 169
    invoke-static {v0, v1, v2, v2}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 170
    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confSave(J)Z

    .line 171
    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confClose(J)V

    .line 172
    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confClear(J)V

    .line 173
    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confSort(J)V

    .line 174
    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confDebugDump(J)V

    .line 176
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    .line 178
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageState()I

    .line 181
    invoke-static {}, Lcom/android/smith/HtcNative;->isDebugOn()Z

    goto :goto_0
.end method

.method public static native getCpuUsage()F
.end method

.method public static native getExternalStorageDirectory()Ljava/lang/String;
.end method

.method public static native getExternalStorageState()I
.end method

.method public static native getFileStat(Lcom/android/smith/infoclaz/FileStat;)I
.end method

.method public static native getLibVersion()I
.end method

.method public static native getPhoneStorageDirectory()Ljava/lang/String;
.end method

.method public static native getPhoneStorageState()I
.end method

.method public static native isDebugOn()Z
.end method
