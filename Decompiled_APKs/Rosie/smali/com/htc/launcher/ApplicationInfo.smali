.class public Lcom/htc/launcher/ApplicationInfo;
.super Lcom/htc/launcher/FxShortcutInfo;
.source "ApplicationInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/launcher/FxShortcutInfo;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/launcher/FxShortcutInfo;-><init>(Lcom/htc/launcher/FxShortcutInfo;)V

    .line 27
    return-void
.end method
