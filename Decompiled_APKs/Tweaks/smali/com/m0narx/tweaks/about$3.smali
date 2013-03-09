.class Lcom/m0narx/tweaks/about$3;
.super Ljava/lang/Object;
.source "about.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/about;->SetupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/about;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/about;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/about$3;->this$0:Lcom/m0narx/tweaks/about;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/m0narx/tweaks/about$3;->this$0:Lcom/m0narx/tweaks/about;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://forum.xda-developers.com/showthread.php?t=1586037"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/m0narx/tweaks/about;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method
