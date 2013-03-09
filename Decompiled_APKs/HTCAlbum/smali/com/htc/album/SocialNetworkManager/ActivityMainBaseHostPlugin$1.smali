.class Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$1;
.super Ljava/lang/Object;
.source "ActivityMainBaseHostPlugin.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$1;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$1;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 216
    return-void
.end method
