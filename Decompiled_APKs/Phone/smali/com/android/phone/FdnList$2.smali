.class Lcom/android/phone/FdnList$2;
.super Ljava/lang/Object;
.source "FdnList.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnList;->showFdnMenuDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnList;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnList;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/phone/FdnList$2;->this$0:Lcom/android/phone/FdnList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    const/4 v0, 0x1

    .line 329
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 330
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    :goto_0
    return v0

    .line 332
    .restart local p1
    .restart local p2
    :cond_0
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 333
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 336
    .restart local p1
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
