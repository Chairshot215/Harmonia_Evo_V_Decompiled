.class Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;
.super Ljava/lang/Object;
.source "DisplayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnControlButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/DisplayManager;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/DisplayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;->this$0:Lcom/htc/opensense/album/DisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/DisplayManager;Lcom/htc/opensense/album/DisplayManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;-><init>(Lcom/htc/opensense/album/DisplayManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, obj:Ljava/lang/Object;
    instance-of v2, v0, Lcom/htc/opensense/album/ControlButton;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;->this$0:Lcom/htc/opensense/album/DisplayManager;

    iget-object v2, v2, Lcom/htc/opensense/album/DisplayManager;->mTemplates:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/opensense/album/DisplayManager$OnControlButtonClickListener;->this$0:Lcom/htc/opensense/album/DisplayManager;

    iget v3, v3, Lcom/htc/opensense/album/DisplayManager;->mFocusTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/ViewTemplateBase;

    .line 57
    .local v1, template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/htc/opensense/album/ControlButton;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/htc/opensense/album/ViewTemplateBase;->onControlButtonPressed(Lcom/htc/opensense/album/ControlButton;)V

    .line 62
    .end local v1           #template:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<*>;"
    :cond_0
    return-void
.end method
