.class synthetic Lcom/htc/home/personalize/WallpaperLivePicker$12;
.super Ljava/lang/Object;
.source "WallpaperLivePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperLivePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$home$personalize$WallpaperLivePicker$PickerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1097
    invoke-static {}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->values()[Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$12;->$SwitchMap$com$htc$home$personalize$WallpaperLivePicker$PickerType:[I

    :try_start_0
    sget-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$12;->$SwitchMap$com$htc$home$personalize$WallpaperLivePicker$PickerType:[I

    sget-object v1, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    invoke-virtual {v1}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$12;->$SwitchMap$com$htc$home$personalize$WallpaperLivePicker$PickerType:[I

    sget-object v1, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->LIST:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    invoke-virtual {v1}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
