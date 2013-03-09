.class final Lcom/htc/opensense/social/MediumOp$1;
.super Lcom/htc/opensense/social/DataOp$OpCreator;
.source "MediumOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/MediumOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/DataOp$OpCreator",
        "<",
        "Lcom/htc/opensense/social/data/Medium;",
        "Lcom/htc/opensense/social/MediumOp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/opensense/social/DataOp$OpCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance(Lcom/htc/opensense/social/ISocialService;Landroid/os/Parcelable;)Lcom/htc/opensense/social/DataOp;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p2, Lcom/htc/opensense/social/data/Medium;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/social/MediumOp$1;->newInstance(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Medium;)Lcom/htc/opensense/social/MediumOp;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Medium;)Lcom/htc/opensense/social/MediumOp;
    .locals 1
    .parameter "service"
    .parameter "data"

    .prologue
    .line 33
    new-instance v0, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v0, p1, p2}, Lcom/htc/opensense/social/MediumOp;-><init>(Lcom/htc/opensense/social/ISocialService;Lcom/htc/opensense/social/data/Medium;)V

    return-object v0
.end method

.method bridge synthetic readDataFromIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/social/MediumOp$1;->readDataFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/data/Medium;

    move-result-object v0

    return-object v0
.end method

.method readDataFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/opensense/social/data/Medium;
    .locals 1
    .parameter "intent"
    .parameter "extra"

    .prologue
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Medium;

    return-object v0
.end method

.method readDataListFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Medium;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
