.class final Lcom/htc/appsharing/AppInfoManager$1;
.super Ljava/lang/Object;
.source "AppInfoManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/AppInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/appsharing/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/appsharing/AppInfo;Lcom/htc/appsharing/AppInfo;)I
    .locals 3
    .parameter "app1"
    .parameter "app2"

    .prologue
    .line 28
    iget-object v0, p1, Lcom/htc/appsharing/AppInfo;->label:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    .line 29
    .local v0, label1:Ljava/lang/String;
    iget-object v1, p2, Lcom/htc/appsharing/AppInfo;->label:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    .line 30
    .local v1, label2:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    .line 33
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    check-cast p1, Lcom/htc/appsharing/AppInfo;

    .end local p1
    check-cast p2, Lcom/htc/appsharing/AppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/appsharing/AppInfoManager$1;->compare(Lcom/htc/appsharing/AppInfo;Lcom/htc/appsharing/AppInfo;)I

    move-result v0

    return v0
.end method
