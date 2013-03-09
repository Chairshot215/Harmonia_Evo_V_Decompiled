.class public final Lcom/android/camera/share/ExternalAppInfo;
.super Ljava/lang/Object;
.source "ExternalAppInfo.java"


# instance fields
.field public final action:Ljava/lang/String;

.field public final isFake:Z

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/share/ExternalAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/camera/share/ExternalAppInfo;->isFake:Z

    iput-object p1, p0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method public static fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/share/ExternalAppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v4, Lcom/android/camera/share/ExternalAppInfo;

    invoke-direct {v4, v3, p1}, Lcom/android/camera/share/ExternalAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
