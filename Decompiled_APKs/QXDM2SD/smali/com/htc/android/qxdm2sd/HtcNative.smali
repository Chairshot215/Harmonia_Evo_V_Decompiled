.class public Lcom/htc/android/qxdm2sd/HtcNative;
.super Ljava/lang/Object;
.source "HtcNative.java"


# static fields
.field public static final MEDIA_MOUNTED:I = 0x1

.field public static final MEDIA_REMOVED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QXDM2SD:HtcNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    const-string v0, "htcqxdm2sd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
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
    .line 115
    invoke-static {p0, p1, p2}, Lcom/htc/android/qxdm2sd/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 129
    .end local p3
    :goto_0
    return p3

    .line 122
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

    .line 129
    goto :goto_0

    .line 124
    .end local v1           #ret:F
    :catch_0
    move-exception v0

    .line 126
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
    .line 73
    invoke-static {p0, p1, p2}, Lcom/htc/android/qxdm2sd/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 87
    .end local p3
    :goto_0
    return p3

    .line 80
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

    .line 87
    goto :goto_0

    .line 82
    .end local v1           #ret:I
    :catch_0
    move-exception v0

    .line 84
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
    .line 94
    invoke-static {p0, p1, p2}, Lcom/htc/android/qxdm2sd/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 108
    .end local p3
    :goto_0
    return-wide p3

    .line 101
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

    .line 108
    goto :goto_0

    .line 103
    .end local v1           #ret:J
    :catch_0
    move-exception v0

    .line 105
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
    .line 64
    invoke-static {p0, p1, p2}, Lcom/htc/android/qxdm2sd/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
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
    .line 136
    invoke-static {p0, p1, p2}, Lcom/htc/android/qxdm2sd/HtcNative;->confGetNative(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 150
    .end local p3
    :goto_0
    return p3

    .line 143
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

    .line 150
    goto :goto_0

    .line 145
    .end local v1           #ret:Z
    :catch_0
    move-exception v0

    .line 147
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

.method public static native getCpuUsage()F
.end method

.method public static native getExternalStorageDirectory()Ljava/lang/String;
.end method

.method public static native getExternalStorageState()I
.end method

.method public static native getFileStat(Lcom/htc/android/qxdm2sd/infoclaz/FileStat;)I
.end method

.method public static native getLibVersion()I
.end method

.method public static native getPhoneStorageDirectory()Ljava/lang/String;
.end method

.method public static native getPhoneStorageState()I
.end method

.method public static native isDebugOn()Z
.end method
