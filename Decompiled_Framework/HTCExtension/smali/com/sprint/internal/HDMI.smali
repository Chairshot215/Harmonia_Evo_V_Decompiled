.class public Lcom/sprint/internal/HDMI;
.super Ljava/lang/Object;
.source "HDMI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIAPI"

.field public static final _ACTIVITYSTATUS_CREATE:I = 0x0

.field public static final _ACTIVITYSTATUS_DESTROY:I = 0x5

.field public static final _ACTIVITYSTATUS_HDMIPLUGIN:I = 0x7

.field public static final _ACTIVITYSTATUS_HDMIPLUGOUT:I = 0x8

.field public static final _ACTIVITYSTATUS_PAUSE:I = 0x3

.field public static final _ACTIVITYSTATUS_PLAYSLIDESHOW:I = 0x6

.field public static final _ACTIVITYSTATUS_RESUME:I = 0x2

.field public static final _ACTIVITYSTATUS_START:I = 0x1

.field public static final _ACTIVITYSTATUS_STOP:I = 0x4

.field static final arFlag:[I

.field private static final hdmi_established_timing:[I

.field public static mirror:I

.field public static presentation:I


# instance fields
.field private final HDMI_CALLER:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sprint/internal/HDMI;->mirror:I

    const/4 v0, 0x1

    sput v0, Lcom/sprint/internal/HDMI;->presentation:I

    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sprint/internal/HDMI;->hdmi_established_timing:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sprint/internal/HDMI;->arFlag:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x20t 0x3t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
        0x40t 0x3t 0x0t 0x0t
        0x70t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x40t 0x2t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x80t 0x4t 0x0t 0x0t
        0x66t 0x3t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    const-string v0, "HDMI_ENABLED_AP"

    iput-object v0, p0, Lcom/sprint/internal/HDMI;->HDMI_CALLER:Ljava/lang/String;

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    const-string v0, "HDMIAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HDMIAPI"

    const-string v1, "mContext, "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sprint/internal/HDMI;->InitInstance()Z

    goto :goto_0
.end method

.method private native DoGetHdmiConnection()I
.end method

.method private native DoGetHdmiMode()I
.end method

.method private native DoGetHdmiState()I
.end method

.method private native DoSetHdmiMode(I)I
.end method

.method private native DoSetHdmiPauseResume(I)I
.end method

.method private native DoSlideCropByFile(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;II)I
.end method

.method private DoSomeQuery()V
    .locals 5

    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->getHdmiState()I

    move-result v1

    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->getHdmiMode()I

    move-result v0

    const-string v3, "##########HTCAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HDMI:DoSomeQuery"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, " enable"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v2, Lcom/sprint/internal/HDMI;->mirror:I

    if-ne v0, v2, :cond_1

    const-string v2, " mirror"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, " disalbe"

    goto :goto_0

    :cond_1
    const-string v2, " presetn"

    goto :goto_1
.end method

.method private native DoTVResolution()[B
.end method

.method private native DoWriteFramebuffer([BIIII)I
.end method

.method private GetHdmiTVResX()I
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method private GetHdmiTVResY()I
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method private GetSuitableRes([I)Z
    .locals 8

    const/16 v7, 0x1e0

    const/4 v6, 0x3

    const/16 v5, 0x2d0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->getTVResolution()[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v3, 0x500

    invoke-direct {p0, v0, v6, v3, v5}, Lcom/sprint/internal/HDMI;->IsSupport([BIII)Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/16 v3, 0x500

    aput v3, p1, v1

    aput v5, p1, v2

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x320

    const/16 v4, 0x258

    invoke-direct {p0, v0, v6, v3, v4}, Lcom/sprint/internal/HDMI;->IsSupport([BIII)Z

    move-result v3

    if-ne v2, v3, :cond_2

    const/16 v3, 0x320

    aput v3, p1, v1

    const/16 v1, 0x258

    aput v1, p1, v2

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0x240

    invoke-direct {p0, v0, v6, v5, v3}, Lcom/sprint/internal/HDMI;->IsSupport([BIII)Z

    move-result v3

    if-ne v2, v3, :cond_3

    aput v5, p1, v1

    const/16 v1, 0x240

    aput v1, p1, v2

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v6, v5, v7}, Lcom/sprint/internal/HDMI;->IsSupport([BIII)Z

    move-result v3

    if-ne v2, v3, :cond_4

    aput v5, p1, v1

    aput v7, p1, v2

    move v1, v2

    goto :goto_0

    :cond_4
    const/16 v3, 0x280

    invoke-direct {p0, v0, v6, v3, v7}, Lcom/sprint/internal/HDMI;->IsSupport([BIII)Z

    move-result v3

    if-ne v2, v3, :cond_5

    const/16 v3, 0x280

    aput v3, p1, v1

    aput v7, p1, v2

    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private InitInstance()Z
    .locals 5

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-ne v4, v2, :cond_0

    invoke-direct {p0}, Lcom/sprint/internal/HDMI;->DoSomeQuery()V

    :goto_0
    return v4

    :cond_0
    :try_start_0
    const-string v1, "/system/lib/libhdmi_sprintext.so"

    const-string v2, "hdmi_sprintext"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sprint/internal/HDMI;->nativeBegin()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprint/internal/HDMI;->mInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HTCAlbum"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private IsSupport([BIII)Z
    .locals 8

    const/4 v0, 0x2

    const/4 v3, 0x0

    :goto_0
    sget-object v6, Lcom/sprint/internal/HDMI;->hdmi_established_timing:[I

    array-length v6, v6

    if-ge v3, v6, :cond_1

    sget-object v6, Lcom/sprint/internal/HDMI;->hdmi_established_timing:[I

    aget v5, v6, v3

    sget-object v6, Lcom/sprint/internal/HDMI;->hdmi_established_timing:[I

    add-int/lit8 v7, v3, 0x1

    aget v2, v6, v7

    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v4, v6, 0x8

    sget-object v6, Lcom/sprint/internal/HDMI;->arFlag:[I

    div-int/lit8 v7, v3, 0x2

    rem-int/lit8 v7, v7, 0x8

    aget v1, v6, v7

    aget-byte v6, p1, v4

    and-int/2addr v1, v6

    if-ne v5, p3, :cond_0

    if-ne v2, p4, :cond_0

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private SlideCropByFile(Ljava/lang/String;Landroid/graphics/Rect;IILjava/lang/String;)I
    .locals 6

    iget-boolean v0, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sprint/internal/HDMI;->DoSlideCropByFile(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;II)I

    move-result v0

    goto :goto_0
.end method

.method private native nativeBegin()V
.end method


# virtual methods
.method public IsHdmiConnection()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v3, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sprint/internal/HDMI;->DoGetHdmiConnection()I

    move-result v0

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public RunEnableIfNecessary()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->IsHdmiConnection()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->getHdmiMode()I

    move-result v1

    sget v2, Lcom/sprint/internal/HDMI;->mirror:I

    if-ne v1, v2, :cond_3

    sget v1, Lcom/sprint/internal/HDMI;->presentation:I

    invoke-virtual {p0, v1}, Lcom/sprint/internal/HDMI;->setHdmiMode(I)I

    :cond_3
    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->getHdmiState()I

    move-result v1

    if-eq v1, v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/sprint/internal/HDMI;->setHdmiPauseResume(I)I

    :cond_4
    invoke-direct {p0}, Lcom/sprint/internal/HDMI;->DoSomeQuery()V

    goto :goto_0
.end method

.method public getHdmiConnection()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->IsHdmiConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHdmiMode()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sprint/internal/HDMI;->DoGetHdmiMode()I

    move-result v0

    goto :goto_0
.end method

.method public getHdmiState()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sprint/internal/HDMI;->DoGetHdmiState()I

    move-result v0

    goto :goto_0
.end method

.method public getTVResolution()[B
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sprint/internal/HDMI;->DoTVResolution()[B

    move-result-object v0

    goto :goto_0
.end method

.method public setHdmiMode(I)I
    .locals 1

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sprint/internal/HDMI;->DoSetHdmiMode(I)I

    move-result v0

    goto :goto_0
.end method

.method public setHdmiPauseResume(I)I
    .locals 7

    const/4 v2, -0x1

    const/4 v6, 0x1

    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    const-string v0, ""

    :try_start_0
    iget-object v3, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "HDMI_ENABLED_AP"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    const-string v3, "HDMIAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HDMI_CALLER:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v6, :cond_5

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "HDMI_ENABLED_AP"

    iget-object v5, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/sprint/internal/HDMI;->mInit:Z

    if-nez v3, :cond_6

    move p1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string v3, "HDMIAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasn\'t release the HDMI resource!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    goto :goto_0

    :cond_5
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "HDMI_ENABLED_AP"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->getHdmiState()I

    move-result v2

    if-ne v2, v6, :cond_7

    if-eq p1, v6, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/sprint/internal/HDMI;->getHdmiState()I

    move-result v2

    if-nez v2, :cond_8

    if-eqz p1, :cond_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/sprint/internal/HDMI;->DoSetHdmiPauseResume(I)I

    move-result p1

    goto/16 :goto_0
.end method

.method public writeHdmiFramebuffer([BIIII)I
    .locals 5

    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v0, ""

    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "HDMI_ENABLED_AP"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/sprint/internal/HDMI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HDMIAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The framebuffer is occupied by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/sprint/internal/HDMI;->DoWriteFramebuffer([BIIII)I

    move-result v2

    goto :goto_0
.end method
