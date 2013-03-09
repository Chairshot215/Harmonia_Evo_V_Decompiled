.class Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;
.super Ljava/lang/Object;
.source "IdleScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 61
    iput-object p1, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, -0x1

    .line 63
    packed-switch p2, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 65
    :pswitch_0
    invoke-static {}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->getInstance()Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->saveWallpaperType(Landroid/content/Context;I)V

    .line 66
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    invoke-virtual {v0, v3}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->setResult(I)V

    .line 67
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    invoke-virtual {v0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->finish()V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    #calls: Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->launchWallpaperChooser()V
    invoke-static {v0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->access$000(Lcom/htc/idlescreen/shortcut/IdleScreenSettings;)V

    .line 71
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    invoke-virtual {v0, v3}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->setResult(I)V

    .line 72
    iget-object v0, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;->this$0:Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    invoke-virtual {v0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->finish()V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
