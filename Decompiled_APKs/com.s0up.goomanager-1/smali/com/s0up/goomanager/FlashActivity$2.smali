.class Lcom/s0up/goomanager/FlashActivity$2;
.super Ljava/lang/Object;
.source "FlashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FlashActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FlashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$2;->this$0:Lcom/s0up/goomanager/FlashActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/s0up/goomanager/FlashActivity$2;->this$0:Lcom/s0up/goomanager/FlashActivity;

    #getter for: Lcom/s0up/goomanager/FlashActivity;->settings:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/s0up/goomanager/FlashActivity;->access$0(Lcom/s0up/goomanager/FlashActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "seen_recovery_msg"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method
