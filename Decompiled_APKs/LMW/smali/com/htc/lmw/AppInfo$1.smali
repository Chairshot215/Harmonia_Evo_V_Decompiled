.class final Lcom/htc/lmw/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/AppInfo;
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
        "Lcom/htc/lmw/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/lmw/AppInfo;Lcom/htc/lmw/AppInfo;)I
    .locals 2
    .parameter "app1"
    .parameter "app2"

    .prologue
    .line 24
    iget-object v0, p1, Lcom/htc/lmw/AppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/htc/lmw/AppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    check-cast p1, Lcom/htc/lmw/AppInfo;

    .end local p1
    check-cast p2, Lcom/htc/lmw/AppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/lmw/AppInfo$1;->compare(Lcom/htc/lmw/AppInfo;Lcom/htc/lmw/AppInfo;)I

    move-result v0

    return v0
.end method
