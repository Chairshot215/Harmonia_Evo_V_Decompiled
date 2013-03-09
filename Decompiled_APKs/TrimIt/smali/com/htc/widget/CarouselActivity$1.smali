.class Lcom/htc/widget/CarouselActivity$1;
.super Ljava/lang/Object;
.source "CarouselActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/CarouselActivity;->hideCarouselWithDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselActivity;


# direct methods
.method constructor <init>(Lcom/htc/widget/CarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity$1;->this$0:Lcom/htc/widget/CarouselActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1009
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1010
    return-void
.end method
