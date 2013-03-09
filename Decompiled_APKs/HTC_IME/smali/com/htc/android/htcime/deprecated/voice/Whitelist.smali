.class public Lcom/htc/android/htcime/deprecated/voice/Whitelist;
.super Ljava/lang/Object;
.source "Whitelist.java"


# instance fields
.field private mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->mConditions:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, conditions:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->mConditions:Ljava/util/List;

    .line 35
    return-void
.end method

.method private matches(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "condition"
    .parameter "target"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const/4 v2, 0x0

    .line 65
    .end local v1           #key:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->mConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public matches(Lcom/htc/android/htcime/deprecated/voice/FieldContext;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    iget-object v2, p0, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->mConditions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 48
    .local v0, condition:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/htc/android/htcime/deprecated/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/htc/android/htcime/deprecated/voice/Whitelist;->matches(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v2, 0x1

    .line 52
    .end local v0           #condition:Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
