.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$13;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$13;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1077
    check-cast p1, Lcom/htc/widget/HeaderBarImage;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/widget/HeaderBarImage;->show()V

    .line 1078
    return-void
.end method
