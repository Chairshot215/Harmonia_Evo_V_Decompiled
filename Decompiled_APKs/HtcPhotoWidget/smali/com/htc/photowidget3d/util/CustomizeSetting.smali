.class public Lcom/htc/photowidget3d/util/CustomizeSetting;
.super Ljava/lang/Object;
.source "CustomizeSetting.java"


# static fields
.field private static final PHOTO_M10_FRAME:Ljava/lang/String; = "Photo_2x2.m10"

.field private static final PHOTO_M10_LISTITEM:Ljava/lang/String; = "Photo_4x4_ListItem.m10"

.field private static final PHOTO_M10_LISTVIEW:Ljava/lang/String; = "Photo_4x4.m10"

.field private static final PREFIX_ORIEN_LAND:Ljava/lang/String; = "Land/"

.field private static final PREFIX_ORIEN_PORT:Ljava/lang/String; = "Port/"

.field private static final SHOW_3D:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-class v0, Lcom/htc/photowidget3d/util/CustomizeSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/util/CustomizeSetting;->TAG:Ljava/lang/String;

    .line 21
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/photowidget3d/util/CustomizeSetting;->SHOW_3D:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getScenePath(Landroid/content/Context;II)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "widgetStyle"
    .parameter "orientation"

    .prologue
    .line 28
    const-class v7, Lcom/htc/photowidget3d/util/CustomizeSetting;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/htc/photowidget3d/util/CustomizeSetting;->TAG:Ljava/lang/String;

    const-string v8, "[getScenePath] +++"

    invoke-static {v6, v8}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 31
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 32
    .local v2, displayWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 33
    .local v1, displayHeight:I
    mul-int v3, v2, v1

    .line 34
    .local v3, res:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v4, scenePath:Ljava/lang/StringBuilder;
    const/4 v6, 0x2

    if-ne v6, p2, :cond_0

    .line 66
    const-string v6, "Land/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_0
    move v5, p1

    .line 74
    .local v5, style:I
    packed-switch v5, :pswitch_data_0

    .line 93
    :goto_1
    sget-object v6, Lcom/htc/photowidget3d/util/CustomizeSetting;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getScenePath] Path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    monitor-exit v7

    return-object v6

    .line 70
    .end local v5           #style:I
    :cond_0
    :try_start_1
    const-string v6, "Port/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #displayHeight:I
    .end local v2           #displayWidth:I
    .end local v3           #res:I
    .end local v4           #scenePath:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 78
    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #displayHeight:I
    .restart local v2       #displayWidth:I
    .restart local v3       #res:I
    .restart local v4       #scenePath:Ljava/lang/StringBuilder;
    .restart local v5       #style:I
    :pswitch_0
    :try_start_2
    const-string v6, "Photo_4x4.m10"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 83
    :pswitch_1
    const-string v6, "Photo_4x4_ListItem.m10"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    :pswitch_2
    const-string v6, "Photo_2x2.m10"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final isSupport3DContent()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/htc/photowidget3d/util/CustomizeSetting;->SHOW_3D:Z

    return v0
.end method
