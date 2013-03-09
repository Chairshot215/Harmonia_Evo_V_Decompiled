.class final enum Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
.super Ljava/lang/Enum;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DocumentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

.field public static final enum DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

.field public static final enum INSTALLED:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

.field public static final enum UPDATE_AVAILABLE:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->INSTALLED:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const-string v1, "UPDATE_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->UPDATE_AVAILABLE:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->INSTALLED:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->UPDATE_AVAILABLE:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->$VALUES:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
    .locals 1
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->$VALUES:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    return-object v0
.end method
