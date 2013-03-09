.class public Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ClickListenerGridView2;
.super Ljava/lang/Object;
.source "LiveGridviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/widget/HtcGridView2$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClickListenerGridView2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ClickListenerGridView2;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/HtcGridView2",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, parent:Lcom/htc/opensense/widget/HtcGridView2;,"Lcom/htc/opensense/widget/HtcGridView2<*>;"
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ClickListenerGridView2;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->onItemClicked(Lcom/htc/opensense/widget/HtcGridView2;Landroid/view/View;IJ)V

    .line 143
    return-void
.end method
