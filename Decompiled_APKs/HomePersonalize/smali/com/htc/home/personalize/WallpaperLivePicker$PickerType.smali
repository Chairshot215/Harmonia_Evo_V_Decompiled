.class public final enum Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
.super Ljava/lang/Enum;
.source "WallpaperLivePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/WallpaperLivePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PickerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

.field public static final enum LIST:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

.field public static final enum PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    const-string v1, "PANEL"

    invoke-direct {v0, v1, v2}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 154
    new-instance v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v3}, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->LIST:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    sget-object v1, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->PANEL:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->LIST:Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->$VALUES:[Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    .locals 1
    .parameter "name"

    .prologue
    .line 152
    const-class v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    return-object v0
.end method

.method public static values()[Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->$VALUES:[Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    invoke-virtual {v0}, [Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/home/personalize/WallpaperLivePicker$PickerType;

    return-object v0
.end method
