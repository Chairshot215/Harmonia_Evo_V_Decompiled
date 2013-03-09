.class Lcom/android/mms/ui/ComposeMessageActivity$83;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 15030
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$83;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 15032
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 15033
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$83;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 15034
    .local v0, img:Landroid/graphics/drawable/Drawable;
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15035
    const/4 v1, 0x1

    .line 15037
    .end local v0           #img:Landroid/graphics/drawable/Drawable;
    :goto_0
    return v1

    .restart local p1
    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
