.class public Lcom/htc/album/addons/photoenhancer/PhotoEffects;
.super Ljava/lang/Object;
.source "PhotoEffects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropThumbEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorAdjustEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorizationEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$WhiteBalanceEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$NoiseEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$BlurEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$VignetteEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$SharpnessEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$SaturationEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$ExposureEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$ContrastEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;,
        Lcom/htc/album/addons/photoenhancer/PhotoEffects$effect;
    }
.end annotation


# static fields
.field public static final EXPORT_ALL:I = 0x8

.field public static final EXPORT_END:I = 0x9

.field public static final FAIL:I = 0x2

.field public static final FORCE_STOP:I = 0x3

.field private static final FRAME_COUNT:I = 0x8

.field private static final FRAME_FILENAMES:[Ljava/lang/String; = null

.field private static final FRAME_IDS:[I = null

.field public static MAX_PRESET:I = 0x0

.field private static final NO_EFFECT_PRESET_ID:I = 0x1

.field public static final PHOTOEFFECTS_RENDER:I = 0x0

.field public static final PHOTOEFFECTS_RENDERTHUM:I = 0x1

.field public static final PROCESS:I = 0x0

.field public static final SAVE_END:I = 0x7

.field public static final SAVE_FAIL:I = 0x5

.field public static final SAVE_SUCCESS:I = 0x4

.field public static final SAVING:I = 0x6

.field public static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private aniDuration:I

.field private bInitial:Z

.field private frameFolder:Ljava/lang/String;

.field private lstSetting:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDegree:I

.field private mHandler:Landroid/os/Handler;

.field private mImage:Lcom/scalado/base/Image;

.field private mRotation:Lcom/scalado/caps/Rotation;

.field private mScreen:Lcom/scalado/caps/screen/Screen;

.field private mSession:Lcom/scalado/caps/Session;

.field private output:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pathFile:Ljava/lang/String;

.field private previewImage:Lcom/scalado/base/Image;

.field private previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

.field private thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x16

    const/16 v3, 0xf

    .line 76
    const-class v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "frame1_thumbnail.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "frame2_thumbnail.png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "frame3_thumbnail.png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "frame4_thumbnail.png"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "frame5_thumbnail.png"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "frame6_thumbnail.png"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "frame7_thumbnail.png"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "frame8_thumbnail.png"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "frame1.png"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "frame2.png"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "frame3.png"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "frame4.png"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "frame5.png"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "frame6.png"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "frame7.png"

    aput-object v2, v0, v1

    const-string v1, "frame8.png"

    aput-object v1, v0, v3

    const/16 v1, 0x10

    const-string v2, "gallery_image_simple_white.png"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "gallery_image_polaroid_full.png"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "gallery_image_type_5x5_full.png"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "gallery_image_4x5grunge_full.png"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "gallery_image_whitecorners_full.png"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "gallery_image_wooden_frame_full.png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_IDS:[I

    .line 162
    sput v3, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->MAX_PRESET:I

    return-void

    .line 101
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x6t 0x7ft
        0x3t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
        0x7t 0x0t 0x6t 0x7ft
        0x9t 0x0t 0x6t 0x7ft
        0xbt 0x0t 0x6t 0x7ft
        0xdt 0x0t 0x6t 0x7ft
        0xft 0x0t 0x6t 0x7ft
        0x0t 0x0t 0x6t 0x7ft
        0x2t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
        0x6t 0x0t 0x6t 0x7ft
        0x8t 0x0t 0x6t 0x7ft
        0xat 0x0t 0x6t 0x7ft
        0xct 0x0t 0x6t 0x7ft
        0xet 0x0t 0x6t 0x7ft
        0x12t 0x0t 0x6t 0x7ft
        0x11t 0x0t 0x6t 0x7ft
        0x13t 0x0t 0x6t 0x7ft
        0x10t 0x0t 0x6t 0x7ft
        0x14t 0x0t 0x6t 0x7ft
        0x15t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 3
    .parameter "mComtext"
    .parameter "handler"
    .parameter "filePath"
    .parameter "degree"
    .parameter "aniDuration"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0x190

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->aniDuration:I

    .line 127
    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    .line 129
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    .line 130
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    .line 133
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->pathFile:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->frameFolder:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    .line 136
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    .line 137
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    .line 138
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    .line 139
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    .line 140
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    .line 141
    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 143
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    .line 144
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 145
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    .line 146
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    .line 171
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    .line 173
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->loadSettingFile()V

    .line 175
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Initial Error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preset list number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    sput v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->MAX_PRESET:I

    .line 184
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->checkFrame()Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Check Frame fail, output frames"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_2
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->outputFrame()V

    .line 192
    :cond_3
    iput-object p2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    .line 194
    invoke-direct {p0, p3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->setFileName(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p4}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->setRotateDegree(I)V

    .line 196
    iput p5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->aniDuration:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "filePath"
    .parameter "degree"
    .parameter "frameFolder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0x190

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->aniDuration:I

    .line 127
    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    .line 129
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    .line 130
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    .line 133
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->pathFile:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->frameFolder:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    .line 136
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    .line 137
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    .line 138
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    .line 139
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    .line 140
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    .line 141
    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 143
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    .line 144
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 145
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    .line 146
    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    .line 165
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->setFileName(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->setRotateDegree(I)V

    .line 167
    iput-object p3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->frameFolder:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private CloseFile(Lcom/scalado/stream/FileStream;)V
    .locals 3
    .parameter "inStream"

    .prologue
    .line 544
    if-eqz p1, :cond_0

    .line 546
    :try_start_0
    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->close()V

    .line 547
    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 548
    sget-object v1, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v2, "CloseFile: FileStream closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v2, "closeFileStream: FileStream close Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private DoEffect(Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;
    .locals 7
    .parameter
    .parameter "session"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;",
            ">;",
            "Lcom/scalado/caps/Session;",
            ")",
            "Lcom/scalado/caps/Session;"
        }
    .end annotation

    .prologue
    .local p1, effectcallback:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;>;"
    const/4 v3, 0x0

    .line 563
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 564
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "DoEffect: Start Apply Effect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    if-nez p1, :cond_3

    .line 567
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 568
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "DoEffect: effectcallback is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p2, v3

    .line 586
    .end local p2
    :cond_2
    return-object p2

    .line 573
    .restart local p2
    :cond_3
    invoke-virtual {p2}, Lcom/scalado/caps/Session;->removeAllFilters()V

    .line 575
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 576
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "DoEffect: Apply effect on session"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_4
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    if-eqz v4, :cond_5

    .line 579
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DoEffect: Rotate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    invoke-virtual {v6}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;

    invoke-direct {v2, p0, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .line 581
    .local v2, rotate:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;
    invoke-virtual {v2, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;->applyeffect(Lcom/scalado/caps/Session;)V

    .line 584
    .end local v2           #rotate:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;

    .line 585
    .local v0, effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    invoke-virtual {v0, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->applyeffect(Lcom/scalado/caps/Session;)V

    goto :goto_0
.end method

.method private LoadFile()Lcom/scalado/stream/FileStream;
    .locals 5

    .prologue
    .line 446
    iget-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 447
    sget-object v3, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v4, "LoadFile start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    const/4 v1, 0x0

    .line 451
    .local v1, inStream:Lcom/scalado/stream/FileStream;
    :try_start_0
    new-instance v2, Lcom/scalado/stream/FileStream;

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->pathFile:Ljava/lang/String;

    sget-object v4, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v2, v3, v4}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v1           #inStream:Lcom/scalado/stream/FileStream;
    .local v2, inStream:Lcom/scalado/stream/FileStream;
    iget-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 459
    sget-object v3, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v4, "LoadFile end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v2

    .line 461
    .end local v2           #inStream:Lcom/scalado/stream/FileStream;
    .restart local v1       #inStream:Lcom/scalado/stream/FileStream;
    :goto_0
    return-object v2

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v4, "File Open Error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 456
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Session;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/stream/FileStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->LoadFile()Lcom/scalado/stream/FileStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getSessionByFileStream(Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/stream/FileStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/album/addons/photoenhancer/PhotoEffects;IIZ)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByPresetId(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DoEffect(Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/base/Image;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/screen/Screen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/screen/Screen;)Lcom/scalado/caps/screen/Screen;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->genEffectBitmap(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->aniDuration:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/album/addons/photoenhancer/PhotoEffects;IZ)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByPresetId(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->setRotateDegree(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->frameFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)Lcom/scalado/caps/Rotation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/caps/Rotation;)Lcom/scalado/caps/Rotation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    return-object p1
.end method

.method private checkFrame()Z
    .locals 8

    .prologue
    .line 308
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, fileList:[Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, check:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, found:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 314
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    aget-object v5, v5, v3

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 315
    const/4 v2, 0x1

    .line 316
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 317
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    if-nez v2, :cond_3

    .line 323
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 324
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found. Add to output list."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    const/4 v0, 0x0

    .line 327
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    if-nez v5, :cond_2

    .line 328
    new-instance v5, Ljava/util/ArrayList;

    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    .line 330
    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 313
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 333
    .end local v2           #found:Z
    .end local v4           #j:I
    :cond_5
    const/4 v1, 0x0

    .line 336
    .end local v0           #check:Z
    .end local v3           #i:I
    :goto_2
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private genEffectBitmap(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "screen"
    .parameter "size"
    .parameter "thread"

    .prologue
    const/4 v1, 0x0

    .line 597
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 598
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genEffectBitmap: Size w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    if-nez v5, :cond_2

    .line 601
    :cond_1
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "genEffectBitmap: Size error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return-object v1

    .line 605
    :cond_2
    invoke-virtual {p1}, Lcom/scalado/caps/screen/Screen;->preview()Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 607
    .local v4, itr:Lcom/scalado/base/Iterator;
    const/4 v0, 0x0

    .line 608
    .local v0, beginTime:Ljava/lang/Long;
    :try_start_0
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 609
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "genEffectBitmap: iterator start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 613
    :cond_3
    const/4 v3, 0x0

    .line 614
    .local v3, isPreviewThread:Z
    if-eqz p3, :cond_4

    .line 615
    const/4 v3, 0x1

    .line 617
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/scalado/base/Iterator;->done()Z

    move-result v5

    if-nez v5, :cond_5

    .line 618
    if-eqz v3, :cond_6

    iget-boolean v5, p3, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    if-eqz v5, :cond_6

    .line 623
    :cond_5
    if-eqz v3, :cond_8

    .line 624
    iget-boolean v5, p3, Lcom/htc/album/addons/photoenhancer/TaskThread;->needPause:Z

    if-eqz v5, :cond_7

    .line 625
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "genEffectBitmap: iterator force Stop..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {v4}, Lcom/scalado/base/Iterator;->abort()V

    .line 627
    const/4 v4, 0x0

    .line 628
    const/4 p3, 0x0

    .line 629
    goto :goto_0

    .line 621
    :cond_6
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 638
    .end local v3           #isPreviewThread:Z
    :catch_0
    move-exception v2

    .line 639
    .local v2, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "genEffectBitmap: screen iterator fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v4, 0x0

    .line 641
    const/4 p3, 0x0

    .line 642
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 631
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v3       #isPreviewThread:Z
    :cond_7
    :try_start_1
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "genEffectBitmap: iterator finish..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 p3, 0x0

    .line 635
    :cond_8
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_9

    .line 636
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genEffectBitmap: iterator end, process time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 645
    :cond_9
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_a

    .line 646
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "genEffectBitmap: Generate Empty Bitmap"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_a
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 649
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 651
    const/4 v4, 0x0

    .line 652
    goto/16 :goto_0
.end method

.method private getEffectListByPresetId(IIZ)Ljava/util/List;
    .locals 9
    .parameter "mPresetId"
    .parameter "mFrameId"
    .parameter "isThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1041
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "getEffectListByPresetId: Get Effect List..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_0
    const/4 v2, 0x0

    .line 1046
    .local v2, effectProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;

    invoke-virtual {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 1047
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preset Name: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;

    invoke-virtual {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :goto_0
    invoke-direct {p0, v2, p3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByProperties(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v3

    .line 1055
    .local v3, listEffect:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;>;"
    if-eqz p2, :cond_1

    .line 1057
    new-instance v1, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;

    invoke-direct {v1, p0, p3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Z)V

    .line 1058
    .local v1, effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1059
    .local v4, property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "value"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    invoke-virtual {v1, v4}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->setProperty(Ljava/util/Map;)V

    .line 1061
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    .end local v1           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    .end local v4           #property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v3

    .line 1048
    .end local v3           #listEffect:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;>;"
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "getEffectListByPresetId: get properties failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getEffectListByPresetId(IZ)Ljava/util/List;
    .locals 6
    .parameter "mPresetId"
    .parameter "isThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    iget-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1069
    sget-object v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v3, "getEffectListByPresetId: Get Effect List..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_0
    const/4 v1, 0x0

    .line 1074
    .local v1, effectProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;

    invoke-virtual {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 1075
    sget-object v3, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preset Name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;

    invoke-virtual {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_0
    invoke-direct {p0, v1, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByProperties(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v3, "getEffectListByPresetId: get properties failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getEffectListByProperties(Ljava/util/Map;Z)Ljava/util/List;
    .locals 10
    .parameter
    .parameter "isThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, effectProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 1085
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1087
    .local v5, listEffect:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;>;"
    const/4 v6, 0x0

    .line 1088
    .local v6, property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 1089
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1090
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v9, "getEffectListByProperties: Add crop effect"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_0
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropThumbEffect;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$CropThumbEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .line 1093
    .local v2, effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 1097
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 1098
    if-nez v6, :cond_3

    .line 1099
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v9, "getEffectListByProperties: Current preset property is null. Get Next property"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1102
    :cond_3
    const-string v7, "name"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1103
    .local v3, effectName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1104
    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const-string v7, "PH_NoEffect"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1105
    invoke-direct {p0, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->isDefaultSetting(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1146
    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    .end local v3           #effectName:Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 1147
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v9, "getEffectListByProperties: No Effect"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .end local v4           #i:I
    .end local v5           #listEffect:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;>;"
    :cond_5
    :goto_2
    return-object v5

    .line 1112
    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    .restart local v3       #effectName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #listEffect:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;>;"
    :cond_6
    const-string v7, "PH_AutoEnhance"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1113
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$AutoEnhanceEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .line 1138
    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    :cond_7
    :goto_3
    invoke-direct {p0, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->isDefaultSetting(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1139
    invoke-virtual {v2, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;->setProperty(Ljava/util/Map;)V

    .line 1140
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1150
    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    .end local v3           #effectName:Ljava/lang/String;
    .end local v4           #i:I
    :catch_0
    move-exception v1

    .line 1151
    .local v1, e:Ljava/lang/Exception;
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v9, "getEffectListByProperties: Get preset effect list error"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v8

    .line 1154
    goto :goto_2

    .line 1114
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    .restart local v3       #effectName:Ljava/lang/String;
    .restart local v4       #i:I
    :cond_8
    :try_start_1
    const-string v7, "PH_Exposure"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1115
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ExposureEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ExposureEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto :goto_3

    .line 1116
    :cond_9
    const-string v7, "PH_Sharpness"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1117
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$SharpnessEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$SharpnessEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto :goto_3

    .line 1118
    :cond_a
    const-string v7, "PH_Contrast"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1119
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ContrastEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ContrastEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto :goto_3

    .line 1120
    :cond_b
    const-string v7, "PH_WhiteBalance"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1121
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$WhiteBalanceEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$WhiteBalanceEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto :goto_3

    .line 1122
    :cond_c
    const-string v7, "PH_Colorization"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1123
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorizationEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorizationEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto :goto_3

    .line 1124
    :cond_d
    const-string v7, "PH_ColorAdjust"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1125
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorAdjustEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ColorAdjustEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto :goto_3

    .line 1126
    :cond_e
    const-string v7, "PH_Saturation"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1127
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$SaturationEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$SaturationEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto/16 :goto_3

    .line 1128
    :cond_f
    const-string v7, "PH_Noise"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1129
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$NoiseEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$NoiseEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto/16 :goto_3

    .line 1130
    :cond_10
    const-string v7, "PH_Blur"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1131
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BlurEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$BlurEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto/16 :goto_3

    .line 1132
    :cond_11
    const-string v7, "PH_Vignette"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1133
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$VignetteEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$VignetteEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto/16 :goto_3

    .line 1134
    :cond_12
    const-string v7, "PH_Frame"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1135
    new-instance v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;

    .end local v2           #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    invoke-direct {v2, p0, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$FrameEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2       #effect:Lcom/htc/album/addons/photoenhancer/PhotoEffects$BaseEffect;
    goto/16 :goto_3
.end method

.method private getSessionByFileStream(Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;
    .locals 10
    .parameter "inStream"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 466
    if-nez p1, :cond_0

    .line 467
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: FileStream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iput-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 536
    :goto_0
    return-object v5

    .line 471
    :cond_0
    const/4 v1, 0x0

    .line 472
    .local v1, decoderIterator:Lcom/scalado/base/Iterator;
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->pathFile:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->pathFile:Ljava/lang/String;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, fileExtension:Ljava/lang/String;
    :try_start_0
    const-string v6, "jpg"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "jpeg"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 475
    :cond_1
    iget-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 476
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: JPG decode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_2
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 516
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 524
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "setDecoderByFileStream : Generate decoder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_3
    invoke-virtual {v1}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/caps/Decoder;

    .line 528
    .local v4, mDecoder:Lcom/scalado/caps/Decoder;
    instance-of v5, v4, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 529
    check-cast v5, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->setRajpegCacheSize(I)V

    .line 531
    :cond_4
    const/4 v3, 0x0

    .line 532
    iget-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 533
    sget-object v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v6, "setDecoderByFileStream : Generate decoder success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_5
    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    .line 479
    .end local v4           #mDecoder:Lcom/scalado/caps/Decoder;
    :cond_6
    :try_start_1
    const-string v6, "png"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 480
    iget-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 481
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: PNG decode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_7
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/PngDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    goto :goto_1

    .line 484
    :cond_8
    const-string v6, "bmp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 485
    iget-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v6, :cond_9

    .line 486
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: BMP decode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_9
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/BmpDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    goto :goto_1

    .line 489
    :cond_a
    const-string v6, "wbmp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 490
    iget-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v6, :cond_b

    .line 491
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: WBMP decode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_b
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    goto :goto_1

    .line 494
    :cond_c
    const-string v6, "gif"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 495
    iget-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v6, :cond_d

    .line 496
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: GIF decode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_d
    invoke-static {p1}, Lcom/scalado/caps/codec/decoder/GifDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    goto/16 :goto_1

    .line 500
    :cond_e
    new-instance v0, Lcom/scalado/caps/codec/decoder/DecoderFactory;

    invoke-direct {v0}, Lcom/scalado/caps/codec/decoder/DecoderFactory;-><init>()V

    .line 501
    .local v0, decoderFactory:Lcom/scalado/caps/codec/decoder/DecoderFactory;
    new-instance v6, Lcom/scalado/caps/codec/decoder/JpegDecoderProvider;

    invoke-direct {v6}, Lcom/scalado/caps/codec/decoder/JpegDecoderProvider;-><init>()V

    invoke-virtual {v0, v6}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 502
    new-instance v6, Lcom/scalado/caps/codec/decoder/PngDecoderProvider;

    invoke-direct {v6}, Lcom/scalado/caps/codec/decoder/PngDecoderProvider;-><init>()V

    invoke-virtual {v0, v6}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 503
    new-instance v6, Lcom/scalado/caps/codec/decoder/BmpDecoderProvider;

    invoke-direct {v6}, Lcom/scalado/caps/codec/decoder/BmpDecoderProvider;-><init>()V

    invoke-virtual {v0, v6}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 504
    new-instance v6, Lcom/scalado/caps/codec/decoder/WBmpDecoderProvider;

    invoke-direct {v6}, Lcom/scalado/caps/codec/decoder/WBmpDecoderProvider;-><init>()V

    invoke-virtual {v0, v6}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 505
    new-instance v6, Lcom/scalado/caps/codec/decoder/GifDecoderProvider;

    invoke-direct {v6}, Lcom/scalado/caps/codec/decoder/GifDecoderProvider;-><init>()V

    invoke-virtual {v0, v6}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->registerProvider(Lcom/scalado/caps/codec/decoder/DecoderProvider;)V

    .line 506
    invoke-virtual {v0, p1}, Lcom/scalado/caps/codec/decoder/DecoderFactory;->createDecoder(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 507
    if-nez v1, :cond_f

    .line 508
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: File format not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 517
    .end local v0           #decoderFactory:Lcom/scalado/caps/codec/decoder/DecoderFactory;
    :catch_0
    move-exception v2

    .line 518
    .local v2, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: Image Decode Error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iput-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 520
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 512
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #decoderFactory:Lcom/scalado/caps/codec/decoder/DecoderFactory;
    :cond_f
    :try_start_2
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "setDecoderByFileStream: Decoder found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private isDefaultSetting(Ljava/util/Map;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v11, 0x7f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1870
    const-string v8, "name"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1871
    .local v5, effectName:Ljava/lang/String;
    const-string v8, "PH_NoEffect"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PH_AutoEnhance"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PH_Exposure"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PH_Sharpness"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PH_Contrast"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PH_Saturation"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PH_Noise"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PH_Blur"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "PH_Frame"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1880
    :cond_0
    const-string v8, "value"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1882
    .local v6, effectValue:F
    float-to-double v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v8, v10, v12

    if-nez v8, :cond_5

    move v8, v9

    .line 1917
    .end local v6           #effectValue:F
    :goto_0
    return v8

    .line 1885
    :cond_1
    const-string v8, "PH_WhiteBalance"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1886
    const-string v8, "Rvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1887
    .local v2, Rvalue:I
    const-string v8, "Gvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1888
    .local v1, Gvalue:I
    const-string v8, "Bvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1890
    .local v0, Bvalue:I
    if-ne v2, v11, :cond_5

    if-ne v1, v11, :cond_5

    if-ne v0, v11, :cond_5

    move v8, v9

    .line 1891
    goto :goto_0

    .line 1893
    .end local v0           #Bvalue:I
    .end local v1           #Gvalue:I
    .end local v2           #Rvalue:I
    :cond_2
    const-string v8, "PH_Colorization"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1894
    const-string v8, "Rvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1895
    .restart local v2       #Rvalue:I
    const-string v8, "Gvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1896
    .restart local v1       #Gvalue:I
    const-string v8, "Bvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1897
    .restart local v0       #Bvalue:I
    const-string v8, "luminance"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1898
    .local v7, luminance:I
    const-string v8, "chrominance"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1900
    .local v3, chrominance:I
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    if-nez v7, :cond_5

    if-nez v3, :cond_5

    move v8, v9

    .line 1901
    goto/16 :goto_0

    .line 1903
    .end local v0           #Bvalue:I
    .end local v1           #Gvalue:I
    .end local v2           #Rvalue:I
    .end local v3           #chrominance:I
    .end local v7           #luminance:I
    :cond_3
    const-string v8, "PH_ColorAdjust"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1904
    const-string v8, "Rvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1905
    .local v2, Rvalue:F
    const-string v8, "Gvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1906
    .local v1, Gvalue:F
    const-string v8, "Bvalue"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1908
    .local v0, Bvalue:F
    cmpl-float v8, v2, v10

    if-nez v8, :cond_5

    cmpl-float v8, v1, v10

    if-nez v8, :cond_5

    cmpl-float v8, v0, v10

    if-nez v8, :cond_5

    move v8, v9

    .line 1909
    goto/16 :goto_0

    .line 1911
    .end local v0           #Bvalue:F
    .end local v1           #Gvalue:F
    .end local v2           #Rvalue:F
    :cond_4
    const-string v8, "PH_Vignette"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1912
    const-string v8, "level"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1913
    .local v4, effectLevel:I
    if-nez v4, :cond_5

    move v8, v9

    .line 1914
    goto/16 :goto_0

    .line 1917
    .end local v4           #effectLevel:I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private loadSettingFile()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getPHPresetItemMapFromInputStream(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    .line 215
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 216
    sget-object v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v3, "loadSettingFile: Preset settings file parsing error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 220
    :cond_0
    if-eqz v1, :cond_1

    .line 222
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v3, "loadSettingFile: Preset settings file not found error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 209
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v3, "loadSettingFile: InputStream close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private outputFrame()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 344
    iget-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 345
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v10, "outputFrame: start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    array-length v8, v9

    .line 348
    .local v8, loop:I
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 349
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sget-object v10, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    array-length v10, v10

    if-eq v9, v10, :cond_1

    .line 350
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 353
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_d

    .line 354
    const/4 v3, 0x0

    .line 355
    .local v3, fis:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 356
    .local v4, fos:Ljava/io/FileOutputStream;
    move v6, v5

    .line 357
    .local v6, index:I
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    if-eqz v9, :cond_2

    .line 358
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sget-object v10, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    array-length v10, v10

    if-eq v9, v10, :cond_2

    .line 359
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 363
    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_IDS:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 364
    if-eqz v3, :cond_7

    .line 365
    iget-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 366
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "outputFrame: frame "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_3
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->FRAME_FILENAMES:[Ljava/lang/String;

    aget-object v10, v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 369
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 371
    .local v0, data:[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, len:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_7

    .line 372
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 375
    .end local v0           #data:[B
    .end local v7           #len:I
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v10, "outputFrame: file load error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 378
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    if-eqz v3, :cond_4

    .line 382
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 388
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 390
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 396
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 397
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 398
    iput-object v12, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    .line 353
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 380
    :cond_7
    if-eqz v3, :cond_8

    .line 382
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 388
    :cond_8
    :goto_5
    if-eqz v4, :cond_9

    .line 390
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 396
    :cond_9
    :goto_6
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 397
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 398
    iput-object v12, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    goto :goto_4

    .line 383
    :catch_1
    move-exception v2

    .line 384
    .local v2, ex:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v10, "outputFrame: close InputStream error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 391
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 392
    .restart local v2       #ex:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v10, "outputFrame: close FileOutputStream error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 383
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 384
    .restart local v2       #ex:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v10, "outputFrame: close InputStream error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 391
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 392
    .restart local v2       #ex:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v10, "outputFrame: close FileOutputStream error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 380
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_a

    .line 382
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 388
    :cond_a
    :goto_7
    if-eqz v4, :cond_b

    .line 390
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 396
    :cond_b
    :goto_8
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    if-eqz v10, :cond_c

    .line 397
    iget-object v10, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 398
    iput-object v12, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->output:Ljava/util/List;

    :cond_c
    throw v9

    .line 383
    :catch_5
    move-exception v2

    .line 384
    .restart local v2       #ex:Ljava/lang/Exception;
    sget-object v10, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v11, "outputFrame: close InputStream error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 391
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 392
    .restart local v2       #ex:Ljava/lang/Exception;
    sget-object v10, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v11, "outputFrame: close FileOutputStream error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 402
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #fis:Ljava/io/InputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v6           #index:I
    :cond_d
    iget-boolean v9, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v9, :cond_e

    .line 403
    sget-object v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v10, "outputFrame: end"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_e
    return-void
.end method

.method private setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "srcPath"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->pathFile:Ljava/lang/String;

    .line 413
    return-void
.end method

.method private setRotateDegree(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 416
    if-gez p1, :cond_3

    .line 417
    add-int/lit16 p1, p1, 0x168

    .line 422
    :cond_0
    :goto_0
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    .line 423
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_4

    .line 424
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    .line 433
    :cond_1
    :goto_1
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDegree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    if-eqz v0, :cond_2

    .line 435
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 436
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    invoke-virtual {v2}, Lcom/scalado/caps/Rotation;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_2
    return-void

    .line 418
    :cond_3
    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    .line 419
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 425
    :cond_4
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_5

    .line 426
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    goto :goto_1

    .line 427
    :cond_5
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_6

    .line 428
    sget-object v0, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    goto :goto_1

    .line 429
    :cond_6
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    if-eqz v0, :cond_1

    .line 430
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mDegree:I

    invoke-static {v0}, Lcom/scalado/caps/Rotation;->getRotationFromValue(I)Lcom/scalado/caps/Rotation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    goto :goto_1
.end method


# virtual methods
.method public ExportAll(Ljava/lang/String;)V
    .locals 4
    .parameter "dstPath"

    .prologue
    .line 1757
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 1758
    sget-object v2, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v3, "ExportAll: Start mHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :goto_0
    return-void

    .line 1761
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1763
    move-object v0, p1

    .line 1764
    .local v0, dst:Ljava/lang/String;
    new-instance v1, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;

    invoke-direct {v1, p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$2;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/lang/String;)V

    .line 1828
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public RenderAllEffectOnPreset(Lcom/scalado/base/Size;II)V
    .locals 2
    .parameter "size"
    .parameter "presetId"
    .parameter "frameId"

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    if-nez v0, :cond_0

    .line 1164
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    sget-object v1, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    .line 1166
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1167
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "RenderAllEffectOnPreset: PAUSE thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->pauseThread()V

    .line 1170
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    invoke-virtual {v0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->setSize(Lcom/scalado/base/Size;)V

    .line 1171
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    invoke-virtual {v0, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->setPresetId(I)V

    .line 1172
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    invoke-virtual {v0, p3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->setFrameId(I)V

    .line 1173
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1174
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "RenderAllEffectOnPreset: RESUME thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->resumeThread()V

    .line 1177
    return-void
.end method

.method public RenderEffectByProperties(Ljava/util/Map;Lcom/scalado/base/Size;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/scalado/base/Size;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p1, mProperties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1590
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "Start RenderEffectByProperties"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const/4 v1, 0x0

    .line 1592
    .local v1, inStream:Lcom/scalado/stream/FileStream;
    const/4 v3, 0x0

    .line 1593
    .local v3, session:Lcom/scalado/caps/Session;
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    if-nez v4, :cond_6

    .line 1594
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    if-nez v4, :cond_4

    .line 1595
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1596
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "RenderEffectByProperties: Create FileStream"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->LoadFile()Lcom/scalado/stream/FileStream;

    move-result-object v1

    .line 1599
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    if-eqz v4, :cond_1

    .line 1600
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "Initial Error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :goto_0
    return-object v2

    .line 1603
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getSessionByFileStream(Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;

    move-result-object v3

    .line 1604
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    if-eqz v4, :cond_2

    .line 1605
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "Initial Error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1608
    :cond_2
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {p0, v4, p2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getImageBySessionAndSize(Lcom/scalado/caps/Session;Lcom/scalado/base/Size;)V

    .line 1609
    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v4}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1610
    .local v0, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1611
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    .line 1612
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    .line 1626
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    if-nez v4, :cond_7

    .line 1627
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "RenderEffectByProperties: Session is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iput-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 1629
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1630
    invoke-direct {p0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V

    goto :goto_0

    .line 1614
    :cond_4
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1615
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "RenderEffectByProperties: Reuse Image, set mRotate to null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_5
    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v4}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1618
    .restart local v0       #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    .line 1619
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    goto :goto_1

    .line 1622
    .end local v0           #decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    :cond_6
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1623
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "RenderEffectByProperties: Reuse session"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1633
    :cond_7
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByProperties(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {p0, v4, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DoEffect(Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1634
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    if-nez v4, :cond_c

    .line 1635
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 1636
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "RenderEffectByProperties: Create image object"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_8
    new-instance v4, Lcom/scalado/base/Image;

    sget-object v5, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v4, p2, v5}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    .line 1644
    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v4, :cond_d

    .line 1645
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 1646
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "RenderEffectByProperties: Create screen object"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_a
    new-instance v4, Lcom/scalado/caps/screen/Screen;

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    invoke-direct {v4, v5, v6}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 1649
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v4, v7}, Lcom/scalado/caps/screen/Screen;->setDitheringEnabled(Z)V

    .line 1655
    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0, v4, p2, v2}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->genEffectBitmap(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1656
    .local v2, result:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1657
    invoke-direct {p0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V

    .line 1658
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "End RenderEffectByProperties"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1640
    .end local v2           #result:Landroid/graphics/Bitmap;
    :cond_c
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 1641
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "RenderEffectByProperties: Reuse image object"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1651
    :cond_d
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v4, :cond_b

    .line 1652
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "RenderEffectByProperties: Reuse screen object"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public RenderNoEffect(IILcom/scalado/base/Size;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "screenWidth"
    .parameter "screenHeight"
    .parameter "nImageSize"

    .prologue
    .line 1531
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v8, "Start RenderNoEffect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->LoadFile()Lcom/scalado/stream/FileStream;

    move-result-object v3

    .line 1533
    .local v3, inStream:Lcom/scalado/stream/FileStream;
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    if-eqz v7, :cond_0

    .line 1534
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v8, "Initial Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const/4 v4, 0x0

    .line 1586
    :goto_0
    return-object v4

    .line 1537
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getSessionByFileStream(Lcom/scalado/stream/FileStream;)Lcom/scalado/caps/Session;

    move-result-object v6

    .line 1538
    .local v6, session:Lcom/scalado/caps/Session;
    iget-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    if-eqz v7, :cond_1

    .line 1539
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v8, "Initial Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/4 v4, 0x0

    goto :goto_0

    .line 1542
    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->getEffectListByPresetId(IZ)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DoEffect(Ljava/util/List;Lcom/scalado/caps/Session;)Lcom/scalado/caps/Session;

    .line 1543
    if-nez v6, :cond_2

    .line 1544
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v8, "RenderNoEffect: Session is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 1546
    invoke-virtual {p0, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1547
    invoke-direct {p0, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V

    .line 1548
    const/4 v4, 0x0

    goto :goto_0

    .line 1550
    :cond_2
    invoke-virtual {v6}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v1

    .line 1551
    .local v1, imageWidth:I
    invoke-virtual {v6}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    .line 1552
    .local v0, imageHeight:I
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RenderNoEffect: Image bitmap w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const/high16 v2, 0x3f80

    .line 1554
    .local v2, imgScale:F
    if-le p1, p2, :cond_5

    const/4 v7, 0x1

    move v8, v7

    :goto_1
    if-le v1, v0, :cond_6

    const/4 v7, 0x1

    :goto_2
    xor-int/2addr v7, v8

    if-eqz v7, :cond_7

    .line 1555
    int-to-float v7, p1

    const/high16 v8, 0x3f80

    mul-float/2addr v7, v8

    int-to-float v8, v0

    div-float/2addr v7, v8

    int-to-float v8, p2

    const/high16 v9, 0x3f80

    mul-float/2addr v8, v9

    int-to-float v9, v1

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1559
    :goto_3
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RenderNoEffect: Scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/high16 v7, 0x3f80

    cmpg-float v7, v2, v7

    if-gez v7, :cond_8

    .line 1563
    int-to-float v7, v0

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {p3, v7}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1564
    int-to-float v7, v1

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {p3, v7}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1565
    if-lez v0, :cond_3

    invoke-virtual {p3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    if-nez v7, :cond_3

    .line 1566
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1568
    :cond_3
    if-lez v1, :cond_4

    invoke-virtual {p3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    if-nez v7, :cond_4

    .line 1569
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 1575
    :cond_4
    :goto_4
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RenderNoEffect: Scaled bitmap w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    .line 1578
    new-instance v7, Lcom/scalado/base/Image;

    sget-object v8, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v7, p3, v8}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    .line 1579
    new-instance v5, Lcom/scalado/caps/screen/Screen;

    iget-object v7, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    invoke-direct {v5, v6, v7}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 1580
    .local v5, screen:Lcom/scalado/caps/screen/Screen;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/scalado/caps/screen/Screen;->setDitheringEnabled(Z)V

    .line 1581
    const/4 v7, 0x0

    invoke-direct {p0, v5, p3, v7}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->genEffectBitmap(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Size;Lcom/htc/album/addons/photoenhancer/TaskThread;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1582
    .local v4, result:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 1583
    invoke-virtual {p0, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 1584
    invoke-direct {p0, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->CloseFile(Lcom/scalado/stream/FileStream;)V

    .line 1585
    sget-object v7, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v8, "End RenderNoEffect"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1554
    .end local v4           #result:Landroid/graphics/Bitmap;
    .end local v5           #screen:Lcom/scalado/caps/screen/Screen;
    :cond_5
    const/4 v7, 0x0

    move v8, v7

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1557
    :cond_7
    int-to-float v7, p1

    const/high16 v8, 0x3f80

    mul-float/2addr v7, v8

    int-to-float v8, v1

    div-float/2addr v7, v8

    int-to-float v8, p2

    const/high16 v9, 0x3f80

    mul-float/2addr v8, v9

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto/16 :goto_3

    .line 1572
    :cond_8
    invoke-virtual {p3, v0}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 1573
    invoke-virtual {p3, v1}, Lcom/scalado/base/Size;->setWidth(I)V

    goto :goto_4
.end method

.method public RenderThumbnailAllPreset(Lcom/scalado/base/Size;)V
    .locals 2
    .parameter "size"

    .prologue
    .line 1360
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1361
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Start RenderThumbnailAllPreset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    new-instance v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    invoke-direct {v0, p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/scalado/base/Size;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    .line 1364
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->setPriority(I)V

    .line 1365
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->start()V

    .line 1366
    return-void
.end method

.method public Save(Ljava/lang/String;II)V
    .locals 6
    .parameter "dstPath"
    .parameter "presetId"
    .parameter "frameId"

    .prologue
    .line 1668
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 1669
    sget-object v4, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v5, "Save: mHandler is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :goto_0
    return-void

    .line 1672
    :cond_0
    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1674
    move-object v0, p1

    .line 1675
    .local v0, dst:Ljava/lang/String;
    move v2, p2

    .line 1676
    .local v2, mPresetId:I
    move v1, p3

    .line 1677
    .local v1, mFrameId:I
    new-instance v3, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Ljava/lang/String;II)V

    .line 1753
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getImageBySessionAndSize(Lcom/scalado/caps/Session;Lcom/scalado/base/Size;)V
    .locals 10
    .parameter "session"
    .parameter "size"

    .prologue
    .line 1832
    iget-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1833
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "getImageBySessionAndSize: Create mImage"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_0
    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mRotation:Lcom/scalado/caps/Rotation;

    if-eqz v6, :cond_2

    .line 1836
    iget-boolean v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1837
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "getImageBySessionAndSize: Rotate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_1
    new-instance v5, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;Lcom/htc/album/addons/photoenhancer/PhotoEffects$1;)V

    .line 1840
    .local v5, rotate:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;
    invoke-virtual {v5, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;->applyeffect(Lcom/scalado/caps/Session;)V

    .line 1842
    .end local v5           #rotate:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RotateEffect;
    :cond_2
    new-instance v6, Lcom/scalado/base/Image;

    sget-object v7, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v6, p2, v7}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    .line 1843
    new-instance v2, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    iget-object v6, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    invoke-direct {v2, v6}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 1844
    .local v2, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    const/4 v4, 0x0

    .line 1846
    .local v4, itr:Lcom/scalado/base/Iterator;
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v4

    .line 1847
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "getImageBySessionAndSize: iterator start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1849
    .local v0, beginTime:J
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/scalado/base/Iterator;->step(I)F

    .line 1850
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImageBySessionAndSize: iterator end process time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    .end local v0           #beginTime:J
    :goto_0
    return-void

    .line 1851
    :catch_0
    move-exception v3

    .line 1852
    .local v3, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v7, "getImageBySessionAndSize: session iterator fail"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const/4 v4, 0x0

    .line 1854
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPHPresetItemMapFromInputStream(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 18
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v7, 0x0

    .line 233
    .local v7, lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 234
    .local v4, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 235
    .local v14, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 237
    const/4 v9, 0x0

    .line 238
    .local v9, phPresetItem:Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
    const/4 v6, 0x0

    .line 239
    .local v6, key:Ljava/lang/String;
    const/4 v13, 0x0

    .line 240
    .local v13, value:Ljava/lang/String;
    const/4 v12, 0x0

    .line 241
    .local v12, startTagName:Ljava/lang/String;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 242
    .local v11, propertyId:Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 244
    .local v2, endTagName:Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 245
    .end local v7           #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    .local v8, lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    :try_start_1
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 246
    .local v3, eventType:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 247
    sget-object v15, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v16, "getPHPresetItemMapFromInputStream : get all presets start"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    const/4 v15, 0x2

    if-ne v3, v15, :cond_6

    .line 251
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 252
    const-string v15, "PH_Preset"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 253
    new-instance v9, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;

    .end local v9           #phPresetItem:Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEffects;)V

    .line 254
    .restart local v9       #phPresetItem:Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
    const/4 v15, 0x0

    const-string v16, "order"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->setOrder(I)V

    .line 255
    const/4 v15, 0x0

    const-string v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->setName(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 292
    const/4 v15, 0x1

    if-ne v3, v15, :cond_0

    :goto_1
    move-object v7, v8

    .line 300
    .end local v2           #endTagName:Ljava/lang/String;
    .end local v3           #eventType:I
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    .end local v9           #phPresetItem:Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
    .end local v11           #propertyId:Ljava/lang/Integer;
    .end local v12           #startTagName:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    .end local v14           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    :goto_2
    return-object v7

    .line 256
    .end local v7           #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    .restart local v2       #endTagName:Ljava/lang/String;
    .restart local v3       #eventType:I
    .restart local v4       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #key:Ljava/lang/String;
    .restart local v8       #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    .restart local v9       #phPresetItem:Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
    .restart local v11       #propertyId:Ljava/lang/Integer;
    .restart local v12       #startTagName:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    .restart local v14       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_3
    const-string v15, "Property"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    if-eqz v15, :cond_1

    .line 258
    const/4 v15, 0x0

    :try_start_4
    const-string v16, "sequence"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v11

    .line 263
    :goto_3
    const/4 v10, 0x0

    .line 264
    .local v10, property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, k:I
    :goto_4
    :try_start_5
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    if-ge v5, v15, :cond_5

    .line 265
    invoke-interface {v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-interface {v14, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    .line 267
    const-string v15, "sequence"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 264
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 259
    .end local v5           #k:I
    .end local v10           #property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/Exception;
    sget-object v15, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getPHPresetItemMapFromInputStream: No sequence. Set to 0, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_3

    .line 269
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #k:I
    .restart local v10       #property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-nez v10, :cond_4

    .line 270
    new-instance v10, Ljava/util/HashMap;

    .end local v10           #property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x7

    invoke-direct {v10, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 272
    .restart local v10       #property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v10, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 294
    .end local v3           #eventType:I
    .end local v5           #k:I
    .end local v9           #phPresetItem:Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
    .end local v10           #property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    move-object v7, v8

    .line 295
    .end local v2           #endTagName:Ljava/lang/String;
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    .end local v11           #propertyId:Ljava/lang/Integer;
    .end local v12           #startTagName:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    .end local v14           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    :goto_6
    sget-object v15, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v16, "getPHPresetItemMapFromInputStream: Xml parser error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 297
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 274
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7           #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    .restart local v2       #endTagName:Ljava/lang/String;
    .restart local v3       #eventType:I
    .restart local v4       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5       #k:I
    .restart local v6       #key:Ljava/lang/String;
    .restart local v8       #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    .restart local v9       #phPresetItem:Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
    .restart local v10       #property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #propertyId:Ljava/lang/Integer;
    .restart local v12       #startTagName:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    .restart local v14       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_6
    invoke-virtual {v9, v11, v10}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->setPropertyById(Ljava/lang/Integer;Ljava/util/Map;)V

    goto :goto_0

    .line 276
    .end local v5           #k:I
    .end local v10           #property:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const/4 v15, 0x3

    if-ne v3, v15, :cond_1

    .line 277
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 278
    const-string v15, "PH_Preset"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 279
    invoke-virtual {v9}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;->getOrder()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 285
    :catch_2
    move-exception v1

    .line 286
    .local v1, e:Ljava/io/IOException;
    sget-object v15, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v16, "getPHPresetItemMapFromInputStream: Xml get next token error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    .line 288
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 294
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #endTagName:Ljava/lang/String;
    .end local v3           #eventType:I
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    .end local v9           #phPresetItem:Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;
    .end local v11           #propertyId:Ljava/lang/Integer;
    .end local v12           #startTagName:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    .end local v14           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #lstSetting:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/htc/album/addons/photoenhancer/PhotoEffects$PHPresetItem;>;"
    :catch_3
    move-exception v1

    goto :goto_6
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 1863
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->bInitial:Z

    return v0
.end method

.method public releaseResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1970
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1971
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1972
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release lstSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1975
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->lstSetting:Ljava/util/HashMap;

    .line 1977
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->stopThumbThread()V

    .line 1978
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    if-eqz v0, :cond_3

    .line 1979
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1980
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release previewThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;->endThread()V

    .line 1983
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$RenderAllEffectThread;

    .line 1985
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    if-eqz v0, :cond_5

    .line 1986
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1987
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release thumbThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_4
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    .line 1991
    :cond_5
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 1992
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 1993
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_6
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mHandler:Landroid/os/Handler;

    .line 1997
    :cond_7
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    .line 1998
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 1999
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_8
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mContext:Landroid/content/Context;

    .line 2003
    :cond_9
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v0, :cond_b

    .line 2004
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 2005
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release global screen object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_a
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mScreen:Lcom/scalado/caps/screen/Screen;

    .line 2009
    :cond_b
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    if-eqz v0, :cond_d

    .line 2010
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 2011
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release global image object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_c
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mImage:Lcom/scalado/base/Image;

    .line 2015
    :cond_d
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    if-eqz v0, :cond_f

    .line 2016
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 2017
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release global preview image object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_e
    iput-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->previewImage:Lcom/scalado/base/Image;

    .line 2021
    :cond_f
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    if-eqz v0, :cond_11

    .line 2022
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 2023
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "Release global session object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_10
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->releaseSession(Lcom/scalado/caps/Session;)V

    .line 2027
    :cond_11
    return-void
.end method

.method public releaseSession(Lcom/scalado/caps/Session;)V
    .locals 5
    .parameter "session"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xff

    .line 1960
    if-eqz p1, :cond_0

    .line 1961
    sget-object v1, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v2, "Release session"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->removeAllFilters()V

    .line 1963
    new-instance v0, Lcom/scalado/caps/codec/decoder/ColorDecoder;

    new-instance v1, Lcom/scalado/base/Color;

    invoke-direct {v1, v3, v3, v3, v3}, Lcom/scalado/base/Color;-><init>(IIII)V

    new-instance v2, Lcom/scalado/base/Size;

    invoke-direct {v2, v4, v4}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/decoder/ColorDecoder;-><init>(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)V

    .line 1964
    .local v0, colorDecoder:Lcom/scalado/caps/codec/decoder/ColorDecoder;
    invoke-virtual {p1, v0}, Lcom/scalado/caps/Session;->setDecoder(Lcom/scalado/caps/Decoder;)V

    .line 1965
    const/4 p1, 0x0

    .line 1967
    .end local v0           #colorDecoder:Lcom/scalado/caps/codec/decoder/ColorDecoder;
    :cond_0
    return-void
.end method

.method public stopThumbThread()V
    .locals 2

    .prologue
    .line 1348
    sget-object v0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->TAG:Ljava/lang/String;

    const-string v1, "StopThumbThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;->stopThread()V

    .line 1351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->thumbThread:Lcom/htc/album/addons/photoenhancer/PhotoEffects$ThumbnailThread;

    .line 1353
    :cond_0
    return-void
.end method
