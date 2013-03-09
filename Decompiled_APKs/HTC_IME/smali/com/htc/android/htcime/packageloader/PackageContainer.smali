.class public Lcom/htc/android/htcime/packageloader/PackageContainer;
.super Ljava/lang/Object;
.source "PackageContainer.java"


# static fields
.field private static EngineClassMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/packageloader/PackageContainer;->EngineClassMapping:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPackageClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "packageName"
    .parameter "clazz"

    .prologue
    .line 27
    sget-object v0, Lcom/htc/android/htcime/packageloader/PackageContainer;->EngineClassMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageClass(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 35
    sget-object v0, Lcom/htc/android/htcime/packageloader/PackageContainer;->EngineClassMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isEngineContain(Ljava/lang/String;)Z
    .locals 1
    .parameter "engineName"

    .prologue
    .line 39
    sget-object v0, Lcom/htc/android/htcime/packageloader/PackageContainer;->EngineClassMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removePackageClass(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 31
    sget-object v0, Lcom/htc/android/htcime/packageloader/PackageContainer;->EngineClassMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
