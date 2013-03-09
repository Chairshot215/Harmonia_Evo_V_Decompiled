.class Lcom/m0narx/tweaks/lockscreen$3;
.super Ljava/lang/Object;
.source "lockscreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/m0narx/tweaks/lockscreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/m0narx/tweaks/lockscreen;


# direct methods
.method constructor <init>(Lcom/m0narx/tweaks/lockscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/m0narx/tweaks/lockscreen$3;->this$0:Lcom/m0narx/tweaks/lockscreen;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 94
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    .local v0, BVar:Ljava/lang/Integer;
    const-string v1, ""

    .line 96
    .local v1, TweakName:Ljava/lang/String;
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 97
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 110
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/m0narx/tweaks/lockscreen$3;->this$0:Lcom/m0narx/tweaks/lockscreen;

    #getter for: Lcom/m0narx/tweaks/lockscreen;->Cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/m0narx/tweaks/lockscreen;->access$0(Lcom/m0narx/tweaks/lockscreen;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    return-void

    .line 99
    :pswitch_0
    const-string v1, "tweaks_lockscreen_hide_labels"

    .line 100
    invoke-static {}, Lcom/m0narx/tweaks/widgets/ShellInterface;->isSuAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :try_start_0
    const-string v2, "pkill com.htc.idlescreen.shortcut"

    invoke-static {v2}, Lcom/m0narx/tweaks/widgets/ShellInterface;->runCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v1, "tweaks_lockscreen_hide_bubles"

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
