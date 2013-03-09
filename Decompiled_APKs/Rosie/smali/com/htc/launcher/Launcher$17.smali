.class Lcom/htc/launcher/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->setBottomBarAreaVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5305
    iput-object p1, p0, Lcom/htc/launcher/Launcher$17;->this$0:Lcom/htc/launcher/Launcher;

    iput p2, p0, Lcom/htc/launcher/Launcher$17;->val$visibility:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5307
    iget-object v0, p0, Lcom/htc/launcher/Launcher$17;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mBottomBarArea:Lcom/htc/launcher/widget/FunctionBar;

    iget v1, p0, Lcom/htc/launcher/Launcher$17;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/htc/launcher/widget/FunctionBar;->setVisibility(I)V

    .line 5308
    return-void
.end method
