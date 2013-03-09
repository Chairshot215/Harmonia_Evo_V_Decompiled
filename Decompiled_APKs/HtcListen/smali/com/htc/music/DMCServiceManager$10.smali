.class Lcom/htc/music/DMCServiceManager$10;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$10;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$10;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v1, 0x2

    const/16 v2, 0x64

    #calls: Lcom/htc/music/DMCServiceManager;->TuneVolume(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/music/DMCServiceManager;->access$3700(Lcom/htc/music/DMCServiceManager;II)V

    return-void
.end method
