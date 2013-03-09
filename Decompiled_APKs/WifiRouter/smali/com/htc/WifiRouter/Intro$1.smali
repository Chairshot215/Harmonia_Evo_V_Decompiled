.class Lcom/htc/WifiRouter/Intro$1;
.super Ljava/lang/Object;
.source "Intro.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/Intro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/Intro;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/Intro;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/WifiRouter/Intro$1;->this$0:Lcom/htc/WifiRouter/Intro;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro$1;->this$0:Lcom/htc/WifiRouter/Intro;

    const-class v2, Lcom/htc/WifiRouter/WifiRouter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro$1;->this$0:Lcom/htc/WifiRouter/Intro;

    invoke-virtual {v1, v0}, Lcom/htc/WifiRouter/Intro;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro$1;->this$0:Lcom/htc/WifiRouter/Intro;

    invoke-virtual {v1}, Lcom/htc/WifiRouter/Intro;->finish()V

    .line 79
    return-void
.end method
