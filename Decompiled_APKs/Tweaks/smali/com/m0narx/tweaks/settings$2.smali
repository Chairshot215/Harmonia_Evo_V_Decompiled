.class Lcom/m0narx/tweaks/settings$2;
.super Ljava/lang/Object;
.source "settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/settings;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/settings$2;->this$0:Lcom/m0narx/tweaks/settings;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/m0narx/tweaks/settings$2;->this$0:Lcom/m0narx/tweaks/settings;

    #getter for: Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/m0narx/tweaks/settings;->access$2(Lcom/m0narx/tweaks/settings;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    iget-object v1, p0, Lcom/m0narx/tweaks/settings$2;->this$0:Lcom/m0narx/tweaks/settings;

    #getter for: Lcom/m0narx/tweaks/settings;->restartMain:Z
    invoke-static {v1}, Lcom/m0narx/tweaks/settings;->access$3(Lcom/m0narx/tweaks/settings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/m0narx/tweaks/settings$2;->this$0:Lcom/m0narx/tweaks/settings;

    const-class v2, Lcom/m0narx/tweaks/main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/m0narx/tweaks/settings$2;->this$0:Lcom/m0narx/tweaks/settings;

    invoke-virtual {v1, v0}, Lcom/m0narx/tweaks/settings;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lcom/m0narx/tweaks/settings$2;->this$0:Lcom/m0narx/tweaks/settings;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/settings;->finish()V

    .line 106
    .end local v0           #myIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/m0narx/tweaks/settings$2;->this$0:Lcom/m0narx/tweaks/settings;

    invoke-virtual {v1}, Lcom/m0narx/tweaks/settings;->finish()V

    goto :goto_0
.end method
