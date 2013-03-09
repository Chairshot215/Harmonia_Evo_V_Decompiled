.class public abstract enum Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
.super Ljava/lang/Enum;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "DocumentBulkAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

.field public static final enum STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

.field public static final enum UPDATE_ALL:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction$1;

    const-string v1, "UPDATE_ALL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->UPDATE_ALL:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    .line 255
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction$2;

    const-string v1, "STOP_ALL_DOWNLOADS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->UPDATE_ALL:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->$VALUES:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

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
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    .locals 1
    .parameter

    .prologue
    .line 193
    const-class v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->$VALUES:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-virtual {v0}, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    return-object v0
.end method


# virtual methods
.method public abstract getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLabelId()I
.end method

.method public abstract isVisible(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z
.end method

.method public abstract isWaiting(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z
.end method

.method public abstract run(Landroid/content/Context;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)V
.end method
