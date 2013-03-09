.class Lcom/m0narx/tweaks/settings$6;
.super Ljava/lang/Object;
.source "settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/settings;->restartPhone()V
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
    iput-object p1, p0, Lcom/m0narx/tweaks/settings$6;->this$0:Lcom/m0narx/tweaks/settings;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 199
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/m0narx/tweaks/settings$6;->this$0:Lcom/m0narx/tweaks/settings;

    #getter for: Lcom/m0narx/tweaks/settings;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/m0narx/tweaks/settings;->access$2(Lcom/m0narx/tweaks/settings;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 202
    const-string v0, "pkill com.m0narx.tweaks"

    invoke-static {v0}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method
