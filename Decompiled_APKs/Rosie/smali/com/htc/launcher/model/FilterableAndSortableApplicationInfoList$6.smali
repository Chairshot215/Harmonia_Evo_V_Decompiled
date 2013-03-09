.class final Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$6;
.super Ljava/lang/Object;
.source "FilterableAndSortableApplicationInfoList.java"

# interfaces
.implements Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public classified(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 1
    .parameter "app"

    .prologue
    .line 438
    iget-boolean v0, p1, Lcom/htc/launcher/FxShortcutInfo;->isDownloaded:Z

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method
