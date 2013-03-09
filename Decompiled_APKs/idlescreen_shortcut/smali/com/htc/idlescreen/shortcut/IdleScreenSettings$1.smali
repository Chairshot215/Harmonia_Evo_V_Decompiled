.class Lcom/htc/idlescreen/shortcut/IdleScreenSettings$1;
.super Ljava/lang/Object;
.source "IdleScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/shortcut/IdleScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/shortcut/IdleScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$1;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$1;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    invoke-virtual {v0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->finish()V

    .line 58
    return-void
.end method
