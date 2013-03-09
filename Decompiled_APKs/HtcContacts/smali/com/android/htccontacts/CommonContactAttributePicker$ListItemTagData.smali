.class final Lcom/android/htccontacts/CommonContactAttributePicker$ListItemTagData;
.super Lcom/android/htccontacts/widget/BaseContactListItemCache;
.source "CommonContactAttributePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListItemTagData"
.end annotation


# instance fields
.field public listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    .line 2695
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/widget/BaseContactListItemCache;-><init>(ZZ)V

    .line 2697
    return-void
.end method
