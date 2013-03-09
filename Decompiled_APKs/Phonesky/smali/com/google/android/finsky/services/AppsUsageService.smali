.class public Lcom/google/android/finsky/services/AppsUsageService;
.super Landroid/app/Service;
.source "AppsUsageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/AppsUsageService$StatsBinder;,
        Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Lcom/google/android/play/IUserContentService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/finsky/services/AppsUsageService$1;

    invoke-direct {v0}, Lcom/google/android/finsky/services/AppsUsageService$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/services/AppsUsageService;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/finsky/services/AppsUsageService$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/AppsUsageService$2;-><init>(Lcom/google/android/finsky/services/AppsUsageService;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/AppsUsageService;->mBinder:Lcom/google/android/play/IUserContentService$Stub;

    .line 153
    return-void
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/finsky/services/AppsUsageService;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/services/AppsUsageService;->mBinder:Lcom/google/android/play/IUserContentService$Stub;

    return-object v0
.end method
