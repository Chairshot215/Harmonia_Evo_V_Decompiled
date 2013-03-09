.class public Lcom/htc/android/htcime/PPIME/EngineInfo;
.super Ljava/lang/Object;
.source "EngineInfo.java"


# static fields
.field private static DEBUG:Z

.field public static PPINPUT_PKGMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static PPPKG_INPUTMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static PPPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static PPSupportInputMethod:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 14
    const-string v0, "PenPower EngineInfo"

    sput-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->TAG:Ljava/lang/String;

    .line 15
    sput-boolean v3, Lcom/htc/android/htcime/PPIME/EngineInfo;->DEBUG:Z

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPPackageMap:Ljava/util/HashMap;

    .line 22
    sget-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPPackageMap:Ljava/util/HashMap;

    const-string v1, "HW"

    const-string v2, "com.htc.android.inputset.ppdb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPPKG_INPUTMap:Ljava/util/HashMap;

    .line 27
    sget-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPPKG_INPUTMap:Ljava/util/HashMap;

    const-string v1, "HW"

    const-string v2, "Handwriting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPINPUT_PKGMap:Ljava/util/HashMap;

    .line 36
    sget-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPINPUT_PKGMap:Ljava/util/HashMap;

    const-string v1, "Handwriting"

    const-string v2, "HW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Handwriting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPSupportInputMethod:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "method"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, p:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPPackageMap:Ljava/util/HashMap;

    sget-object v2, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPINPUT_PKGMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #p:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 64
    .restart local v0       #p:Ljava/lang/String;
    return-object v0
.end method

.method public getSupportMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 50
    const-string v3, ""

    .line 52
    .local v3, m:Ljava/lang/String;
    sget-object v0, Lcom/htc/android/htcime/PPIME/EngineInfo;->PPSupportInputMethod:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 53
    .local v4, t:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v4           #t:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public onPackageUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "action"
    .parameter "packageName"

    .prologue
    .line 68
    return-void
.end method
