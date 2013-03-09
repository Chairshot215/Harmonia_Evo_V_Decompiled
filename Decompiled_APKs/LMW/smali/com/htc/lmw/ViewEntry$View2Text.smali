.class public Lcom/htc/lmw/ViewEntry$View2Text;
.super Lcom/htc/lmw/ViewEntry$View2TextBase;
.source "ViewEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/ViewEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View2Text"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "primaryText"
    .parameter "secondaryText"

    .prologue
    .line 190
    const v2, 0x7f030005

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/lmw/ViewEntry$View2TextBase;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    .line 191
    return-void
.end method
