.class public Lcom/android/settings/applications/HtcHideApplicationSet;
.super Ljava/lang/Object;
.source "HtcHideApplicationSet.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field private static final FUNCTION_NAME:Ljava/lang/String; = "hide_application_list"

.field private static final MODULE_NAME:Ljava/lang/String; = "list"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/settings/applications/HtcHideApplicationSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/HtcHideApplicationSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/applications/HtcHideApplicationSet;->prepareData(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 86
    sget-object v0, Lcom/android/settings/applications/HtcHideApplicationSet;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method private prepareData(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 56
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    iput-object v4, p0, Lcom/android/settings/applications/HtcHideApplicationSet;->mSet:Ljava/util/TreeSet;

    .line 58
    const-string v4, "Settings"

    const-string v5, "list"

    invoke-static {p1, v4, v5}, Lcom/android/settings/framework/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 60
    .local v0, data:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    const-string v4, "hide_application_list"

    invoke-virtual {v0, v4}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getBundleWithFunctionName(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 63
    .local v3, subData:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    .local v1, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/applications/HtcHideApplicationSet;->mSet:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v1           #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/applications/HtcHideApplicationSet;->mSet:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
