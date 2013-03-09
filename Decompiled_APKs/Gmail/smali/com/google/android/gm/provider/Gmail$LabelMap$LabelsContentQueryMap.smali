.class Lcom/google/android/gm/provider/Gmail$LabelMap$LabelsContentQueryMap;
.super Landroid/content/ContentQueryMap;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail$LabelMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LabelsContentQueryMap"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "columnNameOfKey"

    .prologue
    .line 2603
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 2607
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V

    .line 2608
    return-void
.end method


# virtual methods
.method public setKeepUpdated(Z)V
    .locals 0
    .parameter "keepUpdated"

    .prologue
    .line 2618
    return-void
.end method
