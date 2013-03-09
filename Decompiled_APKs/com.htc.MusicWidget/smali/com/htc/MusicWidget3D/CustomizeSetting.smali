.class public Lcom/htc/MusicWidget3D/CustomizeSetting;
.super Ljava/lang/Object;
.source "CustomizeSetting.java"


# static fields
.field public static final STYLE_4x1:I = 0x2

.field public static final STYLE_4x2:I = 0x1

.field public static final STYLE_4x4:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[CustomizeSetting]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidgetListItemScenePath(II)Ljava/lang/String;
    .locals 4
    .parameter "widgetStyle"
    .parameter "orientationType"

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 52
    .local v0, scenePath:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 53
    const-string v0, "Music_4x4_ListItem.m10"

    .line 59
    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_1
    const-string v1, "[CustomizeSetting]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get4x4WidgetListItemScenePath, scenePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-object v0

    .line 55
    :cond_0
    const-string v0, "Music_4x4_ListItem.m10"

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Land/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getWidgetScenePath(II)Ljava/lang/String;
    .locals 4
    .parameter "widgetStyle"
    .parameter "orientationType"

    .prologue
    const/4 v2, 0x1

    .line 16
    const/4 v0, 0x0

    .line 19
    .local v0, scenePath:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 20
    const-string v0, "Music_4x4.m10"

    .line 30
    :goto_0
    if-ne p1, v2, :cond_3

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_1
    const-string v1, "[CustomizeSetting]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get WidgetScenePath, scenePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0

    .line 21
    :cond_0
    if-ne p0, v2, :cond_1

    .line 22
    const-string v0, "Music_4x2.m10"

    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 24
    const-string v0, "Music_4x1.m10"

    goto :goto_0

    .line 26
    :cond_2
    const-string v0, "Music_4x4.m10"

    goto :goto_0

    .line 40
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isInternalStorage()Z
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    return v0
.end method

.method public static isOnlyInternalStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {}, Lcom/htc/MusicWidget3D/CustomizeSetting;->isInternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    .local v0, both:Z
    :cond_0
    :goto_0
    return v1

    .line 84
    .end local v0           #both:Z
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    .line 86
    .restart local v0       #both:Z
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x1

    goto :goto_0
.end method
