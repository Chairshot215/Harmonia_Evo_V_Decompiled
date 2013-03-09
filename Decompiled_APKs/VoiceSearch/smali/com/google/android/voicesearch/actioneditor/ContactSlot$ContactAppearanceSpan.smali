.class Lcom/google/android/voicesearch/actioneditor/ContactSlot$ContactAppearanceSpan;
.super Landroid/text/style/TextAppearanceSpan;
.source "ContactSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actioneditor/ContactSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactAppearanceSpan"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "res"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 72
    return-void
.end method
